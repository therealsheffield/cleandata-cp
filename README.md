#How to Run#
* Download the UCI HAR dataset:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Unzip the file downloaded above. This will create a directory called "UCI HAR Dataset"
* Run the script run_analysis.R from the directory that contains "UCI HAR Dataset".
* The script will output a file called tidy.txt.
* This file will contain mean values of all mean and standard deviation measurements in the dataset.
* The file is sorted by activity and subsorted by subject.

#Expected Input#
The script expects the directory "UCI HAR Dataset" in the same directory that it is run from.
It uses the following files from this dataset.

* activity_labels.txt
* train/X_train.txt
* train/y_train.txt
* train/subject_train.txt
* test/X_test.txt
* test/y_test.txt
* test/subject_test.txt

#Expected Output#
The script will produce a file called tidy.txt in the directory that it is run from.
