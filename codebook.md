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

## Description of the variables in the mean_std_dat.txt file

"s/n" | "ColumnNames" | "class" | "Range" | "Description" | "Measurement"
---|---|---|---|---|-----
"1" | "SubjectID" | "integer" | "1 - 30" | "Subject in experiment" | "Not Available"
"2" | "Activities" | "character" | "LAYING / SITTING / STANDING / WALKING / WALKING_DOWNSTAIRS / WALKING_UPSTAIRS" | "Activities performed in the experiment" | "Not Available"
"3" | "TimeBodyAccmeanX" | "numeric" | "0.22159824394 - 0.3014610196" | "Mean of variable for each activity performed for each subject" | "mean"
"4" | "TimeBodyAccmeanY" | "numeric" | "-0.0405139534294 - -0.00130828765170213" | "Mean of variable for each activity performed for each subject" | "mean"
"5" | "TimeBodyAccmeanZ" | "numeric" | "-0.152513899520833 - -0.07537846886" | "Mean of variable for each activity performed for each subject" | "mean"
"6" | "TimeBodyAccstdX" | "numeric" | "-0.996068635384615 - 0.626917070512821" | "Mean of variable for each activity performed for each subject" | "mean"
"7" | "TimeBodyAccstdY" | "numeric" | "-0.990240946666667 - 0.616937015333333" | "Mean of variable for each activity performed for each subject" | "mean"
"8" | "TimeBodyAccstdZ" | "numeric" | "-0.987658662307692 - 0.609017879074074" | "Mean of variable for each activity performed for each subject" | "mean"
"9" | "TimeGravityAccmeanX" | "numeric" | "-0.680043155060241 - 0.974508732" | "Mean of variable for each activity performed for each subject" | "mean"
"10" | "TimeGravityAccmeanY" | "numeric" | "-0.479894842941176 - 0.956593814210526" | "Mean of variable for each activity performed for each subject" | "mean"
"11" | "TimeGravityAccmeanZ" | "numeric" | "-0.49508872037037 - 0.9578730416" | "Mean of variable for each activity performed for each subject" | "mean"
"12" | "TimeGravityAccstdX" | "numeric" | "-0.996764227384615 - -0.829554947808219" | "Mean of variable for each activity performed for each subject" | "mean"
"13" | "TimeGravityAccstdY" | "numeric" | "-0.99424764884058 - -0.643578361424658" | "Mean of variable for each activity performed for each subject" | "mean"
"14" | "TimeGravityAccstdZ" | "numeric" | "-0.990957249538462 - -0.610161166287671" | "Mean of variable for each activity performed for each subject" | "mean"
"15" | "TimeBodyAccJerkmeanX" | "numeric" | "0.0426880986186441 - 0.130193043809524" | "Mean of variable for each activity performed for each subject" | "mean"
"16" | "TimeBodyAccJerkmeanY" | "numeric" | "-0.0386872111282051 - 0.056818586275" | "Mean of variable for each activity performed for each subject" | "mean"
"17" | "TimeBodyAccJerkmeanZ" | "numeric" | "-0.0674583919268293 - 0.0380533591627451" | "Mean of variable for each activity performed for each subject" | "mean"
"18" | "TimeBodyAccJerkstdX" | "numeric" | "-0.994604542264151 - 0.544273037307692" | "Mean of variable for each activity performed for each subject" | "mean"
"19" | "TimeBodyAccJerkstdY" | "numeric" | "-0.989513565652174 - 0.355306716915385" | "Mean of variable for each activity performed for each subject" | "mean"
"20" | "TimeBodyAccJerkstdZ" | "numeric" | "-0.993288313333333 - 0.0310157077775926" | "Mean of variable for each activity performed for each subject" | "mean"
"21" | "TimeBodyGyromeanX" | "numeric" | "-0.205775427307692 - 0.19270447595122" | "Mean of variable for each activity performed for each subject" | "mean"
"22" | "TimeBodyGyromeanY" | "numeric" | "-0.204205356087805 - 0.0274707556666667" | "Mean of variable for each activity performed for each subject" | "mean"
"23" | "TimeBodyGyromeanZ" | "numeric" | "-0.0724546025804878 - 0.179102058245614" | "Mean of variable for each activity performed for each subject" | "mean"
"24" | "TimeBodyGyrostdX" | "numeric" | "-0.994276591304348 - 0.267657219333333" | "Mean of variable for each activity performed for each subject" | "mean"
"25" | "TimeBodyGyrostdY" | "numeric" | "-0.994210471914894 - 0.476518714444444" | "Mean of variable for each activity performed for each subject" | "mean"
"26" | "TimeBodyGyrostdZ" | "numeric" | "-0.985538363333333 - 0.564875818162963" | "Mean of variable for each activity performed for each subject" | "mean"
"27" | "TimeBodyGyroJerkmeanX" | "numeric" | "-0.157212539189362 - -0.0220916265065217" | "Mean of variable for each activity performed for each subject" | "mean"
"28" | "TimeBodyGyroJerkmeanY" | "numeric" | "-0.0768089915604167 - -0.0132022768074468" | "Mean of variable for each activity performed for each subject" | "mean"
"29" | "TimeBodyGyroJerkmeanZ" | "numeric" | "-0.0924998531372549 - -0.00694066389361702" | "Mean of variable for each activity performed for each subject" | "mean"
"30" | "TimeBodyGyroJerkstdX" | "numeric" | "-0.99654254057971 - 0.179148649684615" | "Mean of variable for each activity performed for each subject" | "mean"
"31" | "TimeBodyGyroJerkstdY" | "numeric" | "-0.997081575652174 - 0.295945926186441" | "Mean of variable for each activity performed for each subject" | "mean"
"32" | "TimeBodyGyroJerkstdZ" | "numeric" | "-0.995380794637681 - 0.193206498960417" | "Mean of variable for each activity performed for each subject" | "mean"
"33" | "TimeBodyAccMagmean" | "numeric" | "-0.986493196666667 - 0.644604325128205" | "Mean of variable for each activity performed for each subject" | "mean"
"34" | "TimeBodyAccMagstd" | "numeric" | "-0.986464542615385 - 0.428405922622222" | "Mean of variable for each activity performed for each subject" | "mean"
"35" | "TimeGravityAccMagmean" | "numeric" | "-0.986493196666667 - 0.644604325128205" | "Mean of variable for each activity performed for each subject" | "mean"
"36" | "TimeGravityAccMagstd" | "numeric" | "-0.986464542615385 - 0.428405922622222" | "Mean of variable for each activity performed for each subject" | "mean"
"37" | "TimeBodyAccJerkMagmean" | "numeric" | "-0.99281471515625 - 0.434490400974359" | "Mean of variable for each activity performed for each subject" | "mean"
"38" | "TimeBodyAccJerkMagstd" | "numeric" | "-0.994646916811594 - 0.450612065720513" | "Mean of variable for each activity performed for each subject" | "mean"
"39" | "TimeBodyGyroMagmean" | "numeric" | "-0.980740846769231 - 0.418004608615385" | "Mean of variable for each activity performed for each subject" | "mean"
"40" | "TimeBodyGyroMagstd" | "numeric" | "-0.981372675614035 - 0.299975979851852" | "Mean of variable for each activity performed for each subject" | "mean"
"41" | "TimeBodyGyroJerkMagmean" | "numeric" | "-0.997322526811594 - 0.0875816618205128" | "Mean of variable for each activity performed for each subject" | "mean"
"42" | "TimeBodyGyroJerkMagstd" | "numeric" | "-0.997666071594203 - 0.250173204117966" | "Mean of variable for each activity performed for each subject" | "mean"
"43" | "fBodyAccmeanX" | "numeric" | "-0.995249932641509 - 0.537012022051282" | "Mean of variable for each activity performed for each subject" | "mean"
"44" | "fBodyAccmeanY" | "numeric" | "-0.989034304057971 - 0.524187686888889" | "Mean of variable for each activity performed for each subject" | "mean"
"45" | "fBodyAccmeanZ" | "numeric" | "-0.989473926666667 - 0.280735952206667" | "Mean of variable for each activity performed for each subject" | "mean"
"46" | "fBodyAccstdX" | "numeric" | "-0.996604570307692 - 0.658506543333333" | "Mean of variable for each activity performed for each subject" | "mean"
"47" | "fBodyAccstdY" | "numeric" | "-0.990680395362319 - 0.560191344" | "Mean of variable for each activity performed for each subject" | "mean"
"48" | "fBodyAccstdZ" | "numeric" | "-0.987224804307692 - 0.687124163703704" | "Mean of variable for each activity performed for each subject" | "mean"
"49" | "fBodyAccJerkmeanX" | "numeric" | "-0.994630797358491 - 0.474317256051282" | "Mean of variable for each activity performed for each subject" | "mean"
"50" | "fBodyAccJerkmeanY" | "numeric" | "-0.989398823913043 - 0.276716853307692" | "Mean of variable for each activity performed for each subject" | "mean"
"51" | "fBodyAccJerkmeanZ" | "numeric" | "-0.992018447826087 - 0.157775692377778" | "Mean of variable for each activity performed for each subject" | "mean"
"52" | "fBodyAccJerkstdX" | "numeric" | "-0.995073759245283 - 0.476803887476923" | "Mean of variable for each activity performed for each subject" | "mean"
"53" | "fBodyAccJerkstdY" | "numeric" | "-0.990468082753623 - 0.349771285415897" | "Mean of variable for each activity performed for each subject" | "mean"
"54" | "fBodyAccJerkstdZ" | "numeric" | "-0.993107759855072 - -0.00623647528983051" | "Mean of variable for each activity performed for each subject" | "mean"
"55" | "fBodyGyromeanX" | "numeric" | "-0.99312260884058 - 0.474962448333333" | "Mean of variable for each activity performed for each subject" | "mean"
"56" | "fBodyGyromeanY" | "numeric" | "-0.994025488297872 - 0.328817010088889" | "Mean of variable for each activity performed for each subject" | "mean"
"57" | "fBodyGyromeanZ" | "numeric" | "-0.985957788 - 0.492414379822222" | "Mean of variable for each activity performed for each subject" | "mean"
"58" | "fBodyGyrostdX" | "numeric" | "-0.994652185217391 - 0.196613286661538" | "Mean of variable for each activity performed for each subject" | "mean"
"59" | "fBodyGyrostdY" | "numeric" | "-0.994353086595745 - 0.646233637037037" | "Mean of variable for each activity performed for each subject" | "mean"
"60" | "fBodyGyrostdZ" | "numeric" | "-0.986725274871795 - 0.522454216314815" | "Mean of variable for each activity performed for each subject" | "mean"
"61" | "fBodyAccMagmean" | "numeric" | "-0.986800645362319 - 0.586637550769231" | "Mean of variable for each activity performed for each subject" | "mean"
"62" | "fBodyAccMagstd" | "numeric" | "-0.987648484461539 - 0.178684580868889" | "Mean of variable for each activity performed for each subject" | "mean"
"63" | "fBodyBodyAccJerkMagmean" | "numeric" | "-0.993998275797101 - 0.538404846128205" | "Mean of variable for each activity performed for each subject" | "mean"
"64" | "fBodyBodyAccJerkMagstd" | "numeric" | "-0.994366667681159 - 0.316346415348718" | "Mean of variable for each activity performed for each subject" | "mean"
"65" | "fBodyBodyGyroMagmean" | "numeric" | "-0.986535242105263 - 0.203979764835897" | "Mean of variable for each activity performed for each subject" | "mean"
"66" | "fBodyBodyGyroMagstd" | "numeric" | "-0.981468841692308 - 0.236659662496296" | "Mean of variable for each activity performed for each subject" | "mean"
"67" | "fBodyBodyGyroJerkMagmean" | "numeric" | "-0.997617389275362 - 0.146618569064407" | "Mean of variable for each activity performed for each subject" | "mean"
"68" | "fBodyBodyGyroJerkMagstd" | "numeric" | "-0.99758523057971 - 0.287834616098305" | "Mean of variable for each activity performed for each subject" | "mean"
