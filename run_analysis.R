run_analysis <- function(){

##Reading in the required files for the analysis
features <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", stringsAsFactors = FALSE)
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", stringsAsFactors = FALSE)
X_train <- read.table("UCI HAR Dataset/train/X_train.txt", stringsAsFactors = FALSE)
X_test <- read.table("UCI HAR Dataset/test/X_test.txt", stringsAsFactors = FALSE)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", stringsAsFactors = FALSE)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", stringsAsFactors = FALSE)
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)

##Merges the files to obtain 1 data set
Merged_data <- rbind(cbind(subject_train, y_train, X_train), cbind(subject_test, y_test, X_test))

##Assigns column names to the columns of the newly merged data set as they are still named: V1,V2,V3...
colnames(Merged_data) <- c("SubjectID", "Activities", c(features$V2))

##Extracts from the merged data set, measurements on the mean and standard deviation only
mean_stdv_data <- Merged_data[grepl("\\<mean()\\>", colnames(Merged_data)) | grepl("\\<std()\\>", colnames(Merged_data)) | grepl("Activities", colnames(Merged_data)) | grepl("SubjectID", colnames(Merged_data))]

##Naming the activities in the data set using descriptive activity names
mean_stdv_data$Activities <- activity_labels$V2[mean_stdv_data$Activities]

##Appropriately labels the data set with descriptive variable names.
colnames(mean_stdv_data) <- mgsub(c(colnames(mean_stdv_data)), c('\\()|_|-','^t'), c('',"Time"))

##Creates an independent tidy data set with the average of each variable for each activity and each subject
mean_std_dat <- group_by(mean_stdv_data, SubjectID, Activities) %>% 
summarise_all(funs(mean))

##Writes the tidy data set to a text file called "mean_std_dat"
write.table(mean_std_dat, "mean_std_dat.txt", sep = "\t", row.name = FALSE)

}
