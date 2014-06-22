#Getting and Cleaning Data Course Project

The goal of this project is to prepare tidy data that can be used for later analysis.

##Input data
The raw input data for the project is the UCI HAR Dataset available from the course website
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  "UCI HAR Dataset")

The files relevant to the project are:

- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'train/subject_train.txt': Training subject IDs.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'test/subject_test.txt': Test subject IDs.

##R script
An R script ****run_analysis.R**** has been developed to implement the following tasks. 

1. Merge the training and the test sets to create one data set `data.raw`. 
2. Extract only the measurements on the mean and standard deviation for each measurement, by filtering the list of all features. Only the features statistics mean and standard eviation are kept. 
3. Assign descriptive activity names by replacing the codes with the labels, after some data cleaing (word splitting and capitalization). 
4. Label the data set with descriptive variable names, following the camelCase naming convention. 
5. Create tidy data set with the average of each variable for each activity and each subject.

##In order to get the tidy dataset you have to:

1. put `UCI HAR Dataset.zip` and `run_analysis.R` files in the same directory.
2. With RStudio
	1. *Open* `run_analysis.R` from the chosen directory
	2. *Session -> Set Working Directory -> to Source File Location*
	3. *Code -> Run All*
4. `HAR-tidy.txt` dataset is written into the data folder. It can be read using `read.table("data/HAR-tidy.txt", header=TRUE)`
