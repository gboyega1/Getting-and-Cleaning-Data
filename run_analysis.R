run_analysis <- function(){
features <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", stringsAsFactors = FALSE)
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", stringsAsFactors = FALSE)
X_train <- read.table("UCI HAR Dataset/train/X_train.txt", stringsAsFactors = FALSE)
X_test <- read.table("UCI HAR Dataset/test/X_test.txt", stringsAsFactors = FALSE)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", stringsAsFactors = FALSE)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", stringsAsFactors = FALSE)
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)
Merged_data <- rbind(cbind(subject_train, y_train, X_train), cbind(subject_test, y_test, X_test))
colnames(Merged_data) <- c("SubjectID", "Activities", c(features$V2))
mean_stdv_data <- Merged_data[grepl("\\<mean()\\>", colnames(Merged_data)) | grepl("\\<std()\\>", colnames(Merged_data)) | grepl("Activities", colnames(Merged_data)) | grepl("SubjectID", colnames(Merged_data))]
mean_stdv_data$Activities <- activity_labels$V2[mean_stdv_data$Activities]
colnames(mean_stdv_data) <- mgsub(c(colnames(mean_stdv_data)), c('\\()|_|-','^t'), c('',"Time"))
mean_std_dat <- group_by(mean_stdv_data, SubjectID, Activities) %>% 
summarise_all(list(mean))
write.table(mean_std_dat, "mean_std_dat.txt", sep = "\t", row.name = FALSE)
}
