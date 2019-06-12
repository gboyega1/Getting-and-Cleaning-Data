Title: "Getting and Cleaning Data Codebook"  
author: "Adegboyega Yusuf Ajenifuja"  
date: "June 12, 2019"
==================

## Project Description
    This project aims to assess how students enrolled in the Coursera: Getting and Cleaning Data course are able to collect, work with and clean a data set
    Students are required to read in data, create a tidy data set and write the contents a the tidy data set to a text file in their working directory
    
### Collection of the Raw Data
    The data was sourced from:
    Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
    Smartlab - Non Linear Complex Systems Laboratory
    DITEN - Università degli Studi di Genova.
    Via Opera Pia 11A, I-16145, Genoa, Italy.
    activityrecognition@smartlab.ws
    www.smartlab.ws
    It was compiled via experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

## Creating the Tidy Data file

### Guide to create the tidy data file  
    1. Download the data into the working directory  
    2. Read the required data files into R  
    3. Merge the training and Test sets to form 1 data set  
    4. Assign column names to the columns of the newly merged data set  
    5. From the merged data set, creates a subset by extracting measurements on the mean and standard deviation only  
    6. Name the activities in the data set in 5 using descriptive activity names  
    7. Appropriately label the data set in 5 with descriptive variable names  
    8. Create an independent tidy data set with the average of each variable for each activity and each subject  
    9. Write the contents of the tidy data set to a text file
