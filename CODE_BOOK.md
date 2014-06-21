Code_Book.md Getting and Cleaning Data Course Project
======================================================

run_analysis.R
-------------------

The file run_Analysis.R performs the following analysis on the UCI HAR Dataset:
    *Merges the training and test data sets to create one data set by using: 
            -rbind to merge the subject_test.txt and subject_train.txt, the y_test.txt and y_train.txt , and the X_test.txt and X_train.txt data.  
            -cbind to combine the subject, y, and X data into a single data set. 

     *Appropriately labels the merged UCI HAR Dataset with the descriptive variable names.  This is done by setting the column names for the subject column to "subject", the y column to "ActivityByNum", and then the X data with the names from the features.txt file after they have been cleaned to remove the following characters  "()"   ","  "-"  and replacing the text "BodyBody" with "Body". 

     * Extracts only the measurements on the mean and standard deviation for each measurement from the UCI HAR Dataset by building a logical vector where those names that contain the substring "std" or "mean" have a setting of TRUE and those that don't have a setting of FALSE.  The logical vector is then used to subset the data set to extract only the measurements on the mean and standard deviation.   
     * Replaces the activity identifiers (1-6) with the descriptive activity names  provided in the activity_labels.txt file (WALKING - LAYING). 
 
     * Creates a second, independant tidy data set with the average of each variable for each activity and each subject, and writes the tidy data set to a text file "tidydata.txt".


DataDictionary
==============

    subjectID -  A numeric identifier that identifies the subject - range 1:30
    ActivityName - The name of the Activity - Walking, Walking_UpStairs, Walking_Downstairs, Sitting, Standing, Laying


Note:  The following data is computed from the UCI HAR Dataset by computing the average for each variables mean and standard deviation, for each activity for each subject from the UCI HAR Dataset. The UCI HAR Dataset features_info.txt file provides a description of this data was obtained from the Samsung phones accelerometer and gyroscope.


   tBodyAccmeanXAVG - time domain, average mean Body Accelerometer X-axis

   tBodyAccmeanYAVG - time domain, average mean Body Accelerometer Y-axis 

   tBodyAccmeanZAVG - time domain, average mean Body Accelerometer Z-axis 

   tBodyAccstdXAVG  - time domain, average standard deviation Body Accelerometer X-axis 

   tBodyAccstdYAVG  - time domain, average standard deviation Body Accelerometer Y-axis 
  
   tBodyAccstdZAVG  - time domain, average standard deviation Body Accelerometer Z-axis 

   tGravityAccmeanXAVG - time domain, average mean Gravity Accelerometer X-Axis

   tGravityAccmeanYAVG - time domain, average mean Gravity Accelerometer Y-Axis

   tGravityAccmeanZAVG - time domain, average mean Gravity Accelerometer Z-Axis

   tGravityAccstdXAVG - time domain, average standard deviation Gravity Accelerometer X-Axis

   tGravityAccstdYAVG - time domain, average standard deviation Gravity Accelerometer Y-Axis

   tGravityAccstdZAVG - time domain, average standard deviation Gravity Accelerometer Z-Axis

   tBodyAccJerkmeanXAVG - time domain, average mean Body Accelerometer Jerk X-Axis

   tBodyAccJerkmeanYAVG - time domain, average mean Body Accelerometer Jerk Y-Axis

   tBodyAccJerkmeanZAVG - time domain, average mean Body Accelerometer Jerk Z-Axis

   tBodyAccJerkstdXAVG  - time domain, average standard deviation Body Accelerometer Jerk X-Axis

   tBodyAccJerkstdYAVG  - time domain, average standard deviation Body Accelerometer Jerk Y-Axis

   tBodyAccJerkstdZAVG  - time domain, average standard deviation Body Accelerometer Jerk Z-Axis

   tBodyGyromeanXAVG - time domain average mean raw Gyroscope X-axis

   tBodyGyromeanYAVG - time domain average mean raw Gyroscope Y-axis 

   tBodyGyromeanZAVG - time domain average mean raw Gyroscope Z-axis 

   tBodyGyrostdXAVG - time domain average standard deviation Body raw Gyroscope X-axis 

   tBodyGyrostdYAVG - time domain average standard deviation Body raw Gyroscope Y-axis 

   tBodyGyrostdZAVG - time domain average standard deviation Body raw Gyroscope Z-axis 

   tBodyGyroJerkmeanXAVG - time domain average mean Body raw Gyroscope Jerk X-axis 

   tBodyGyroJerkmeanYAVG - time domain average mean Body raw Gyroscope Y-axis 

   tBodyGyroJerkmeanZAVG - time domain average mean Body raw Gyroscope Z-axis 

   tBodyGyroJerkstdXAVG - time domain average standard deviation Body Gyroscope Jerk measurement  X axis

   tBodyGyroJerkstdYAVG - time domain average standard deviation Body Gyroscope Jerk measurement Y axis

   tBodyGyroJerkstdZAVG - time domain average standard deviation Body Gyroscope Jerk measurement Z axis 

   tBodyAccMagmeanAVG - time domain, average mean Body acceleration Magnitude calculated using the Euclidean norm.

   tBodyAccMagstdAVG - time domain, average standard deviation Body acceleration Magnitude calculated using the Euclidean norm.

   tBodyGravityAccMagmeanAVG -  time domain, average mean Body Gravity acceleration Magnitude calculated using the Euclidean norm.

   tBodyGravityAccMagstdAVG - time domain, average standard deviation Body Gravity acceleration Magnitude calculated using the Euclidean norm.

   tBodyAccJerkMagmeanAVG - time domain, average mean Body acceleration Jerk Magnitude calculated using the Euclidean norm.

   tBodyAccJerkMagstdAVG - time domain, average standard deviation Body acceleration Jerk magnitude calculated using the Euclidean norm.

   tBodyGyroMagmeanAVG - time domain, average mean Body gyroscope magnitude calculated using the Euclidean norm.

   tBodyGyroMagstdAVG - time domain, average standard deviation Body gyroscope magnitude calculated using the Euclidean norm.

   tBodyGyroJerkMagmeanAVG - time domain, average mean Body gyroscope magnitude Jerk calculated using the Euclidean norm.

   tBodyGyroJerkMagstdAVG  - time domain, average standard deviation Body gyroscope magnitude Jerk calculated using the Euclidean norm.

   fBodyAccmeanXAVG - frequency domain, average mean Body Acceleration X-Axis

   fBodyAccmeanYAVG  - frequency domain, average mean Body Acceleration Y-Axis

   fBodyAccmeanZAVG  -  frequency domain, average mean Body Acceleration Z-Axis

   fBodyAccstdXAVG  - frequency domain, average standard deviation Body Acceleration X-Axis

   fBodyAccstdYAVG -  frequency domain, average standard deviation Body Acceleration Y-Axis 

   fBodyAccstdZAVG -  frequency domain, average standard deviation Body Acceleration Z-Axis 

   fBodyAccmeanFreqXAVG -  frequency domain, average mean Body Acceleration X-Axis frequency

   fBodyAccmeanFreqYAVG  - frequency domain, average mean Body Acceleration Y-Axis frequency

   fBodyAccmeanFreqZAVG - frequency domain, average mean Body Acceleration Z-Axis frequency

   fBodyAccJerkmeanXAVG - frequency domain, average mean Body Acceleration Jerk X-Axis 

   fBodyAccJerkmeanYAVG - frequency domain, average mean Body Acceleration Jerk Y-Axis 

   fBodyAccJerkmeanZAVG - frequency domain, average mean Body Acceleration Jerk Z-Axis 

   fBodyAccJerkstdXAVG - frequency domain, average standard deviation Body Acceleration Jerk X-Axis 

   fBodyAccJerkstdYAVG - frequency domain, average standard deviation Body Acceleration Jerk Y-Axis 

   fBodyAccJerkstdZAVG - frequency domain, average standard deviation Body Acceleration Jerk Z-Axis 

   fBodyAccJerkmeanFreqXAVG - frequency domain, average mean Body Acceleration Jerk X-Axis frequency

   fBodyAccJerkmeanFreqYAVG - frequency domain, average mean Body Acceleration Jerk Y-Axis frequency 

   fBodyAccJerkmeanFreqZAVG - frequency domain, average mean Body Acceleration Jerk Z-Axis frequency 

   fBodyGyromeanXAVG - frequency domain, average mean Body Gyroscope Jerk X-Axis 

   fBodyGyromeanYAVG - frequency domain, average mean Body Gyroscope Jerk Y-Axis 

   fBodyGyromeanZAVG - frequency domain, average mean Body Gyroscope Jerk Z-Axis 

   fBodyGyrostdXAVG - frequency domain, average standard deviation Body Gyroscope Jerk X-Axis 

   fBodyGyrostdYAVG - frequency domain, average standard deviation Body Gyroscope Jerk Y-Axis 

   fBodyGyrostdZAVG - frequency domain, average standard deviation Body Gyroscope Jerk Z-Axis 

   fBodyGyromeanFreqXAVG - frequency domain, average mean Body Gyroscope Jerk X-Axis frequency

   fBodyGyromeanFreqYAVG - frequency domain, average mean Body Gyroscope Jerk Y-Axis frequency
 
   fBodyGyromeanFreqZAVG - frequency domain, average mean Body Gyroscope Jerk Z-Axis frequency

   fBodyAccMagmeanAVG - frequency domain, average mean Body Acceleration Magnitude 

   fBodyAccmagstdAVG - frequency domain, average standard deviation Body Acceration Magnitude 

   fBodyAccMagmeanFreqAVG - frequency domain, average mean Body Acceleration Magnitude frequency

   fBodyAccJerkMagmeanAVG - frequency domain, average mean Body Acceleration Jerk Magnitude 

   fBodyAccJerkMagstdAVG  - frequency domain, average standard deviation Body Acceleration Jerk Magnitude 

   fBodyAccJerkMagmeanFreqAVG - frequency domain, average mean Body Acceleration Jerk Magnitude frequency

   fBodyGyroMagmeanAVG - frequency domain, average mean Body gyroscope Magnitude 

   fBodyGyroMagstdAVG - frequency domain, average standard deviation Body gyroscope Magnitude 

   fBodyGyroMagmeanFreqAVG - frequency domain, average mean Body gyroscope Magnitude frequency

   fBodyGyroJerkMagmeanAVG - frequency domain, Body average mean of the Magnitude Jerk Gyroscope.

   fBodyGyroJerkMagstdAVG - frequency domain, Body average standard deviation of the Magnitude Jerk Gyroscope.

   fBodyGyroJerkMagmeanFreqAVG - frequency domain, Body average mean Frequency Magnitude Jerk Gyroscope reading 












