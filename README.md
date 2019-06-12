# Getting and Cleaning Data: run_analysis.R

The purpose of this project is for students enrolled in the Coursera: Getting and Cleaning Data course to demonstrate their ability to collect, work with and clean a dataset. The goal is to prepare tidy data that can be used for later analysis
The data used for this analysis represents various measurements on several Human Activities performed by a group of 30 volunteers and was obtained from: 
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


# run_analysis.R code explanation
The run_analysis script creates a tidy data set comprising the average of each variable on mean and standard deviation measurements for each activity performed and each subject of the experiment. It then writes the tidy datset to a text file in the user's working directory

## reads in the required datasets using read.table() and setting the stringsAsFactors option to false so as not to create unnecessary factor variable at this stage of the analysis
  `features <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)`
  `subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", stringsAsFactors = FALSE)`
  `subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", stringsAsFactors = FALSE)`
  `X_train <- read.table("UCI HAR Dataset/train/X_train.txt", stringsAsFactors = FALSE)`
  `X_test <- read.table("UCI HAR Dataset/test/X_test.txt", stringsAsFactors = FALSE)`
  `y_train <- read.table("UCI HAR Dataset/train/y_train.txt", stringsAsFactors = FALSE)`
  `y_test <- read.table("UCI HAR Dataset/test/y_test.txt", stringsAsFactors = FALSE)`
  `activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)`

## merges the training and test data sets (subject_train, subject_test, X_train, X_test, y_train, y_test) to create 1 data set.
  `Merged_data <- rbind(cbind(subject_train, y_train, X_train), cbind(subject_test, y_test, X_test))`

## assigns column names to the columns of the newly merged data set
 `colnames(Merged_data) <- c("SubjectID", "Activities", c(features$V2))`

## from the newly merged data set, extracts measurements on mean and standard deviation only
 `mean_stdv_data <- Merged_data[grepl("\\<mean()\\>", colnames(Merged_data)) | grepl("\\<std()\\>", colnames(Merged_data)) |  grepl("Activities", colnames(Merged_data)) | grepl("SubjectID", colnames(Merged_data))]`

## Using descriptive activity names to name the activities in the dataset by substituting the activity number with it's respective activity name
 `mean_stdv_data$Activities <- activity_labels$V2[mean_stdv_data$Activities]`

## Appropriately labels the data set with descriptive variable names by removing symbols such as "_", "_", "()" and replacing "t" with "Time"
 `colnames(mean_stdv_data) <- mgsub(c(colnames(mean_stdv_data)), c('\\()|_|-','^t'), c('',"Time"))`

## Creates a tidy data set with the average of each variable for each activity and each subject
 `mean_std_dat <- group_by(mean_stdv_data, SubjectID, Activities) %>% 
  summarise_all(funs(mean))`

## Writes the tidy data set to a text file called "mean_std_dat"
 `write.table(mean_std_dat, "mean_std_dat.txt", sep = "\t", row.name = FALSE)`
