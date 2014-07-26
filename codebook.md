DATA COLLECTION DESCRIPTION
Human Activity Recognition Using Smartphones Dataset

SUMMARY
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. The experiments have been video-recorded to label the data manually.
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

EXTENT OF COLLECTION:  1 data file +  run_analysis.R
DATA FORMAT: string, numeric

VARIABLES DESCRIPTION
The variables are taken from the original dataset and some changes were done:
Merged the train and test sets.
Only the measurements for means and stds were taken, others discarded.
The columns received their name according to features.txt
A new column with activity label was added according to labels.txt
Variable names were changed:
"t" prefix changed to "Time."
"f" prefix changed to" Frequency."
"Acc" changed to "Accelerometer."
"-mean()" changed to "mean"
"-std()" changed to "std"
"Gyro" changed to "Gyroscope."
"Jerk" changed to "Jerk."
"Mag" changed to "Magnitude."
Then for each combination of subject and activity there is an observation in the table with mean values for all the variables described above.

Subject# - The number of the subject, according to subject_train.txt and subject_test.txt from original dataset (ranges from 1 to 30)
Activity - the descriptive name of the activity performed.
Other variables are signals from smartphone with some transformations. For more info: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones