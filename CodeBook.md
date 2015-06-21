This code book describes the tidy.txt data file produced by run_analysis.R in this
directory. 

#Study Design#

The study data was downloaded from the UC Irvine Machine Learning Repository.

From the file features_info.txt:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals... These time domain signals... were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals... using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals... Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm... 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals...

#Code Book#

Below is a listing of all variables in tidy.txt.

##Activity##
Values: LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS

Units: None

Description: Activity of the subject when measurements were taken 

Source: y_train.txt y_test.txt activity_labels.txt

Transformations: Integer activity ID in y_train.txt and y_test.txt were paired
with corresponding activity ID in activity_labels.txt. The associated activity
label in activity_labels.txt is the final value used for activity in tidy.txt.

##Subject##
Values: "Subject 01"" to "Subject 30"

Units: None

Description: The subject who performed the activity when measurements were taken

Source: subject_train.txt subject_test.txt

Transformations: Integer subject ID from subject_train.txt and subject.txt were
changed to human readable strings and leading zeroes were added to the ID for
easier sorting.

##Time Domain - Body Acceleration {XYZ} - Mean##
Values: [-1.0, 1.0]

Units: None

Description: Normalized mean body acceleration in the X, Y, and Z dimensions.

Original variable: 

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Time Domain - Body Acceleration {XYZ} - Standard Deviation##
Values: [-1.0, 1.0]

Units: None

Description: Normalized standard deviation of body acceleration in the X, Y, and Z dimensions.

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Time Domain - Gravity Acceleration {XYZ} - Mean##
Values: [-1.0, 1.0]

Units: None

Description: Normalized mean gravity acceleration in the X, Y, and Z dimensions.

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Time Domain - Gravity Acceleration {XYZ} - Standard Deviation##
Values: [-1.0, 1.0]

Units: None

Description: Normalized standard devaiation of gravity acceleration in the X, Y, and Z dimensions.

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Time Domain - Body Acceleration Jerk {XYZ} - Mean##
Values: [-1.0, 1.0]

Units: None

Description: Normalized mean body acceleration jerk in the X, Y, and Z dimensions.

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Time Domain - Body Acceleration Jerk {XYZ} - Standard Deviation##
Values: [-1.0, 1.0]

Units: None

Description: Normalized standard deviation of body acceleration jerk in the X, Y, and Z dimensions.

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Time Domain - Body Gyro {XYZ} - Mean##
Values: [-1.0, 1.0]

Units: None

Description: Normalized mean body gyro in the X, Y, and Z dimensions.

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Time Domain - Body Gyro {XYZ} - Standard Deviation##
Values: [-1.0, 1.0]

Units: None

Description: Normalized standard deviation of body gyro in the X, Y, and Z dimensions.

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Time Domain - Body Gyro Jerk {XYZ} - Mean##
Values: [-1.0, 1.0]

Units: None

Description: Normalized mean body gyro jerk in the X, Y, and Z dimensions.

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Time Domain - Body Gyro Jerk {XYZ} - Standard Deviation##
Values: [-1.0, 1.0]

Units: None

Description: Normalized standard deviation of body gyro jerk in the X, Y, and Z dimensions.

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Time Domain - Body Acceleration Magnitude - Mean##
Values: [-1.0, 1.0]

Units: None

Description: Normalized mean body acceleration magnitude.

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Time Domain - Body Acceleration Magnitude - Standard Deviation##
Values: [-1.0, 1.0]

Units: None

Description: Normalized standard devaition of body acceleration magnitude.

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Time Domain - Gravity Acceleration Magnitude - Mean##
Values: [-1.0, 1.0]

Units: None

Description: Normalized mean gravity acceleration magnitude.

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Time Domain - Gravity Acceleration Magnitude - Standard Deviation##
Values: [-1.0, 1.0]

Units: None

Description: Normalized standard deviation of gravity acceleration magnitude.

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Time Domain - Body Acceleration Jerk Magnitude - Mean##
Values: [-1.0, 1.0]

Units: None

Description: Normalized mean body acceleration jerk magnitude.

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Time Domain - Body Acceleration Jerk Magnitude - Standard Deviation##
Values: [-1.0, 1.0]

Units: None

Description: Normalized standard deviation of body acceleration jerk magnitude.

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Time Domain - Body Gyro Magnitude - Mean##
Values: [-1.0, 1.0]

Units: None

Description: Normalized mean body gyro magnitude.

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Time Domain - Body Gyro Magnitude - Standard Deviation##
Values: [-1.0, 1.0]

Units: None

Description: Normalized standard deviation of body gyro magnitude.

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Time Domain - Body Gyro Jerk Magnitude - Mean##
Values: [-1.0, 1.0]

Units: None

Description: Normalized mean body gyro jerk magnitude.

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Time Domain - Body Gyro Jerk Magnitude - Standard Deviation##
Values: [-1.0, 1.0]

Units: None

Description: Normalized standard deviation of body gyro jerk magnitude.

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Frequency Domain - Body Acceleration {XYZ} - Mean##
Values: [-1.0, 1.0]

Units: None

Description: Normalized mean of body acceleration in X, Y, and Z dimensions (frequency domain).

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Frequency Domain - Body Acceleration {XYZ} - Standard Deviation##
Values: [-1.0, 1.0]

Units: None

Description: Normalized standard deviation of body acceleration in X, Y, and Z dimensions (frequency domain).

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Frequency Domain - Body Acceleration Jerk {XYZ} - Mean##
Values: [-1.0, 1.0]

Units: None

Description: Normalized mean of body acceleration jerk in X, Y, and Z dimensions (frequency domain).

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Frequency Domain - Body Acceleration Jerk {XYZ} - Standard Deviation##
Values: [-1.0, 1.0]
Units: None

Description: Normalized standard deviation of body acceleration jerk in X, Y, and Z dimensions (frequency domain).

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Frequency Domain - Body Gyro {XYZ} - Mean##
Values: [-1.0, 1.0]

Units: None

Description: Normalized mean of body gyro in X, Y, and Z dimensions (frequency domain).

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Frequency Domain - Body Gyro {XYZ} - Standard Deviation##
Values: [-1.0, 1.0]

Units: None

Description: Normalized standard deviation of body gyro in X, Y, and Z dimensions (frequency domain).

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Frequency Domain - Body Acceleration Magnitude - Mean##
Values: [-1.0, 1.0]

Units: None

Description: Normalized mean of body acceleration magnitude (frequency domain).

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Frequency Domain - Body Acceleration Magnitude - Standard Deviation##
Values: [-1.0, 1.0]

Units: None

Description: Normalized standard deviation of body acceleration magnitude (frequency domain).

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Frequency Domain - Body Acceleration Jerk Magnitude - Mean##
Values: [-1.0, 1.0]

Units: None

Description: Normalized mean of body acceleration jerk magnitude (frequency domain).

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Frequency Domain - Body Acceleration Jerk Magnitude - Standard Deviation##
Values: [-1.0, 1.0]

Units: None

Description: Normalized standard deviation of body acceleration jerk magnitude (frequency domain).

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Frequency Domain - Body Gyro Magnitude - Mean##
Values: [-1.0, 1.0]

Units: None

Description: Normalized mean of body gyro magnitude (frequency domain).

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Frequency Domain - Body Gyro Magnitude - Standard Deviation##
Values: [-1.0, 1.0]

Units: None

Description: Normalized standard deviation of body gyro magnitude (frequency domain).

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Frequency Domain - Body Gyro Jerk Magnitude - Mean##
Values: [-1.0, 1.0]

Units: None

Description: Normalized mean of body gyro jerk magnitude (frequency domain).

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity

##Frequency Domain - Body Gyro Jerk Magnitude - Standard Deviation##
Values: [-1.0, 1.0]

Units: None

Description: Normalized standard deviation of body gyro jerk magnitude (frequency domain).

Source: X_train.txt X_test.txt

Transformations: Average of all measurements for a fixed person and activity
