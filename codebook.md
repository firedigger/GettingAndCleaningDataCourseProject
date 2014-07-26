DATA COLLECTION DESCRIPTION
Human Activity Recognition Using Smartphones Dataset

SUMMARY
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. The experiments have been video-recorded to label the data manually.
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

EXTENT OF COLLECTION:  1 data file +  run_analysis.R
DATA FORMAT: string, numeric

VARIABLES DESCRIPTION
The variables are taken from the original dataset with some changes to their names to make them more clear.

Subject# - The number of the subject, according to subject_train.txt and subject_test.txt from original dataset (ranges from 1 to 30)
Activity - the descriptive name of the activity performed.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 'Time.' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (Time.BodyAcc-XYZ and Time.GravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (Time.BodyAccJerk-XYZ and Time.BodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (Time.BodyAccelerometer.Magnitude, Time.GravityAccelerometer.Magnitude, Time.BodyAccelerometer.JerkMagnitude, TimeBody.Gyroscope.Magnitude, Time.BodyGyroscope.JerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing Frequency.BodyAcc-XYZ, Frequency.BodyAccelerometer.Jerk-XYZ, Frequency.BodyGyroscope-XYZ, Frequency.BodyAccelerometerJerkMag, Frequency.BodyGyroscope.Magnitude, Frequency.BodyGyroscope.JerkMag. (Note the 'Frequency.' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
