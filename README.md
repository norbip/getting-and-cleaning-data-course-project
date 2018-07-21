# Coursera *Getting and Cleaning Data* Course Project

## Purpose

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.

The repository contains the following files:

- `README.md`, this file, which gives an overview on the project how and how all the scripts work,
- `CodeBook.md`, the code book that describes the variables, the data, and any transformations or work that you performed to clean up the data,
- `data_tidy.txt`, which contains the tidied data set,
- `run_analysis.R`, the R script which creates the tidy data set.

## Goals
An R script named as `run_analysis.R` performs the following steps:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## run_analysis.R

The R script `run_analysis.R` is used to create the tidy data set. The script implements the following steps:

1. It downloads the UCI HAR Dataset data set file, if it does not exist, and extracts its contents to the working directory.
2. It reads test, train and other data into separate variables.
3. Merges train and test data sets (x, y, subject) into one data frame and then merges the two together.
4. It replaces columns labels using the features data set and extracts only those, which contain average and standard deviation values.
5. It replaces activity codes with activity names using the activities data set.
6. Sets appropriate column names by removing parentheses and converting them to lower case.
7. From the tidy data set it creates a second data set with the aggregate (averaging) of each variable for each activity and subject.
8. The script saves the tidy, aggregated data into a file named `data_tidy.txt`