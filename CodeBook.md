# CodeBook

## Description of Variables

### Identifiers
- `subject_id`: Identifier of the subject who performed the activity. Range from 1 to 30.
- `activity_name`: Name of the activity performed by the subject. Six activity labels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

### Accelerometer and Gyroscope Measurements
The following variables represent measurements from the accelerometer and gyroscope in the X, Y, and Z axes. The prefix 't' denotes time domain signals, and 'f' denotes frequency domain signals.

- `tBodyAcc_mean_X`: Mean value of body acceleration in the X axis (time domain). Units: g (gravity units).
- `tBodyAcc_mean_Y`: Mean value of body acceleration in the Y axis (time domain). Units: g.
- `tBodyAcc_mean_Z`: Mean value of body acceleration in the Z axis (time domain). Units: g.
- (Include descriptions for other variables)

### Derived Variables
These variables are derived from the accelerometer and gyroscope measurements:

- `tBodyAccJerkMag_mean`: Mean value of the magnitude of body acceleration jerk (time domain). Units: g.
- `fBodyGyro_mean_X`: Mean value of body angular velocity in the X axis (frequency domain). Units: radians/second.
- (Include descriptions for other variables)

## Transformations

1. Merged the training and test sets.
2. Extracted only the measurements of the mean and standard deviation.
3. Used descriptive activity names.
4. Appropriately labeled the data set with descriptive variable names.
5. Created a second, independent tidy data set with the average of each variable for each activity and each subject.

## Data

The data used in this project comes from the "Human Activity Recognition Using Smartphones Dataset" from the University of California Irvine (UCI). The dataset includes information about the activity performed by subjects while wearing a Samsung Galaxy S II smartphone.

The dataset includes the following files:
- `README.txt`: Description of the dataset.
- `features_info.txt`: Information about the variables used in the feature vector.
- `features.txt`: List of all features.
- `activity_labels.txt`: Links the class labels with their activity name.
- `train/X_train.txt`: Training set.
- `train/y_train.txt`: Training labels.
- `test/X_test.txt`: Test set.
- `test/y_test.txt`: Test labels.
- `train/subject_train.txt`: Identifies the subject who performed the activity for each window sample in the training set.
- (Include descriptions for other files)


