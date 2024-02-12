# README

This repository contains a set of R scripts for the analysis of the "Human Activity Recognition Using Smartphones Dataset" from the University of California Irvine (UCI).

## Scripts

- `run_analysis.R`: This script merges the training and test sets, extracts the measurements of the mean and standard deviation, uses descriptive activity names, appropriately labels the data set with descriptive variable names, and creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Files

- `CodeBook.md`: This file describes the variables, the data, and any transformations or work performed on the data.
- `README.md`: This file provides a detailed overview of the project, including information about the dataset, variables, transformations, and scripts used for analysis.

## Dataset Description

The "Human Activity Recognition Using Smartphones Dataset" contains data collected from the accelerometers of Samsung Galaxy S smartphones worn by 30 volunteers aged between 19 and 48 years. Each volunteer performed six activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING. The dataset includes triaxial acceleration from the accelerometer and triaxial angular velocity from the gyroscope, along with activity labels and subject identifiers.

## Variables

The dataset includes various variables representing measurements from the accelerometer and gyroscope in the X, Y, and Z axes, as well as derived variables such as mean, standard deviation, and magnitude. Refer to the `CodeBook.md` for a detailed description of all variables.

## Transformations

The analysis involved several transformations:
1. Merging the training and test sets.
2. Extracting only the measurements of the mean and standard deviation.
3. Using descriptive activity names to name the activities in the data set.
4. Appropriately labeling the data set with descriptive variable names.
5. Creating a second, independent tidy data set with the average of each variable for each activity and each subject.


