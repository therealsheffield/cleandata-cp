
####============================================================================
# run_analysis.sh
#
# Input: HAR data from the UCI machine learning repository
# Output: A file called tidy.txt in the current directory containing per-activity
#         per-subject average values of a number of measurements.
#
# Author: therealsheffield
####============================================================================


####============================================================================
# This section will download and expand the data for the project if it is
# uncommented
####
#
# Download file
#download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
#              destfile="data.zip",
#              method="curl")
# Unzip file
#unzip("data.zip")
####============================================================================

# We expect the folder produced by unzipping the UCI data file to be presesnt in
# the working directory

# Read train data
trainx <- read.table(file="UCI HAR Dataset/train/X_train.txt", sep="")
trainy <- read.table(file="UCI HAR Dataset/train/y_train.txt", sep="")
subtrain <- read.table(file="UCI HAR Dataset/train/subject_train.txt", sep="")

# Read test data
testx <- read.table(file="UCI HAR Dataset/test/X_test.txt", sep="")
testy <- read.table(file="UCI HAR Dataset/test/y_test.txt", sep="")
subtest <- read.table(file="UCI HAR Dataset/test/subject_test.txt", sep="")

# Read activities
act <- read.table(file="UCI HAR Dataset/activity_labels.txt", sep="")

# Merge test and train data
x <- rbind(trainx, testx)
y <- rbind(trainy, testy)
sub <- rbind(subtrain, subtest)

# Extract mean and stddev measurements
feat <- read.table(file="UCI HAR Dataset/features.txt", sep="")
mstd <- feat[grep("(mean|std)", feat$V2),]
mstd <- mstd[grep("(Freq)", mstd$V2, invert=TRUE), "V1"]
x <- x[,mstd]

# Name subject variable
sub <- as.data.frame(sub)
names(sub) <- c("Subject")

# Name activity variable
names(y) <- c("Activity")
names(act) <- c("Activity","ActivityName")

# Merge subject, activity, measurements
x <- cbind(sub,y,x)

# Average each variable for each activity and each subject
x <- aggregate(. ~ Subject + Activity, x, mean, na.rm=TRUE)

# Rename subjects
x['Subject'] <- paste(c("Subject"), formatC(x[,'Subject'], width=2, format="d", flag="0"))

# Rename activities
x <- merge(x, act, by="Activity")
x['Activity'] <- x['ActivityName']
x['ActivityName'] <- NULL

# Rename variables
# 68 user friendly variable names (manual input)
vars <- c("Activity",
          "Subject",

          "Time Domain - Body Acceleration X - Mean",
          "Time Domain - Body Acceleration Y - Mean",
          "Time Domain - Body Acceleration Z - Mean",
          "Time Domain - Body Acceleration X - Standard Deviation",
          "Time Domain - Body Acceleration Y - Standard Deviation",
          "Time Domain - Body Acceleration Z - Standard Deviation",

          "Time Domain - Gravity Acceleration X - Mean",
          "Time Domain - Gravity Acceleration Y - Mean",
          "Time Domain - Gravity Acceleration Z - Mean",
          "Time Domain - Gravity Acceleration X - Standard Deviation",
          "Time Domain - Gravity Acceleration Y - Standard Deviation",
          "Time Domain - Gravity Acceleration Z - Standard Deviation",

          "Time Domain - Body Acceleration Jerk X - Mean",
          "Time Domain - Body Acceleration Jerk Y - Mean",
          "Time Domain - Body Acceleration Jerk Z - Mean",
          "Time Domain - Body Acceleration Jerk X - Standard Deviation",
          "Time Domain - Body Acceleration Jerk Y - Standard Deviation",
          "Time Domain - Body Acceleration Jerk Z - Standard Deviation",

          "Time Domain - Body Gyro X - Mean",
          "Time Domain - Body Gyro Y - Mean",
          "Time Domain - Body Gyro Z - Mean",
          "Time Domain - Body Gyro X - Standard Deviation",
          "Time Domain - Body Gyro Y - Standard Deviation",
          "Time Domain - Body Gyro Z - Standard Deviation",

          "Time Domain - Body Gyro Jerk X - Mean",
          "Time Domain - Body Gyro Jerk Y - Mean",
          "Time Domain - Body Gyro Jerk Z - Mean",
          "Time Domain - Body Gyro Jerk X - Standard Deviation",
          "Time Domain - Body Gyro Jerk Y - Standard Deviation",
          "Time Domain - Body Gyro Jerk Z - Standard Deviation",

          "Time Domain - Body Acceleration Magnitude - Mean",
          "Time Domain - Body Acceleration Magnitude - Standard Deviation",

          "Time Domain - Gravity Acceleration Magnitude - Mean",
          "Time Domain - Gravity Acceleration Magnitude - Standard Deviation",

          "Time Domain - Body Acceleration Jerk Magnitude - Mean",
          "Time Domain - Body Acceleration Jerk Magnitude - Standard Deviation",

          "Time Domain - Body Gyro Magnitude - Mean",
          "Time Domain - Body Gyro Magnitude - Standard Deviation",

          "Time Domain - Body Gyro Jerk Magnitude - Mean",
          "Time Domain - Body Gyro Jerk Magnitude - Standard Deviation",

          "Frequency Domain - Body Acceleration X - Mean",
          "Frequency Domain - Body Acceleration Y - Mean",
          "Frequency Domain - Body Acceleration Z - Mean",
          "Frequency Domain - Body Acceleration X - Standard Deviation",
          "Frequency Domain - Body Acceleration Y - Standard Deviation",
          "Frequency Domain - Body Acceleration Z - Standard Deviation",

          "Frequency Domain - Body Acceleration Jerk X - Mean",
          "Frequency Domain - Body Acceleration Jerk Y - Mean",
          "Frequency Domain - Body Acceleration Jerk Z - Mean",
          "Frequency Domain - Body Acceleration Jerk X - Standard Deviation",
          "Frequency Domain - Body Acceleration Jerk Y - Standard Deviation",
          "Frequency Domain - Body Acceleration Jerk Z - Standard Deviation",

          "Frequency Domain - Body Gyro X - Mean",
          "Frequency Domain - Body Gyro Y - Mean",
          "Frequency Domain - Body Gyro Z - Mean",
          "Frequency Domain - Body Gyro X - Standard Deviation",
          "Frequency Domain - Body Gyro Y - Standard Deviation",
          "Frequency Domain - Body Gyro Z - Standard Deviation",

          "Frequency Domain - Body Acceleration Magnitude - Mean",
          "Frequency Domain - Body Acceleration Magnitude - Standard Deviation",

          "Frequency Domain - Body Acceleration Jerk Magnitude - Mean",
          "Frequency Domain - Body Acceleration Jerk Magnitude - Standard Deviation",

          "Frequency Domain - Body Gyro Magnitude - Mean",
          "Frequency Domain - Body Gyro Magnitude - Standard Deviation",

          "Frequency Domain - Body Gyro Jerk Magnitude - Mean",
          "Frequency Domain - Body Gyro Jerk Magnitude - Standard Deviation")

names(x) <- vars

# Sort by activity then subject
x <- x[order(x$Activity, x$Subject),]

# Write tidy output
write.table(x, file="tidy.txt", row.names=FALSE)