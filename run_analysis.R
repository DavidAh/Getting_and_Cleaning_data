
runAnalysis <- function(){
  
  if (file.exists("UCI HAR Dataset")){

      ## Read in the set of features.
      features <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)
      names(features) <- c("index", "Name")
    
      ## Fix the names in the features.
      for (i in 1:nrow(features) ){
          ##print(features$Name[i])
          features$Name[i] <- gsub("\\(\\)", "", features$Name[i])
          features$Name[i] <- gsub("-","", features$Name[i])
          features$Name[i] <- gsub(",","", features$Name[i]) 
          features$Name[i] <- gsub("BodyBody", "Body", features$Name[i])
          ##print(features$Name[i])
      }
      
      ## Read in the Activity Labels
      ActivityLabels <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)
      names(ActivityLabels) <- c("idx", "Activity")
    
      ## Read in the test data.
      subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt")
      yTest <- read.table("UCI HAR Dataset/test/y_test.txt")
      XTest <- read.table("UCI HAR Dataset/test/X_test.txt")
         
      ## Read in the train data.
      subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
      yTrain <- read.table("UCI HAR Dataset/train/y_train.txt")
      XTrain <- read.table("UCI HAR Dataset/train/X_train.txt")
    
      ## Combine the datasets.
      subject <- rbind(subjectTest, subjectTrain)
      y       <- rbind(yTest, yTrain)
      X       <- rbind(XTest, XTrain)
        
      ## Add column names.
      names(subject) <- "subject"
      names(y) <- "ActivityByNum"
      names(X) <- features$Name
              
      ## Combine the columnns to create on data set.
      data <- cbind(subject,y,X)
    
      ## subset the data frame to extract only the measurements on the mean and standard deviation of 
      ## each measurement
      use <- logical(563)
      use[1:2] <- TRUE
      j <- 3
      
      for (i in 1:nrow(features)){
        
          if (( length(grep("std", features$Name[i]) ) > 0) || length(grep("mean", features$Name[i]) > 0))
          {
            use[j] <- TRUE
          }
          else 
            use[j] <- FALSE
          j <- j+1
      }
      j <- j-1
      
      ## Now that the logical vector identifying the mean and standard deviation columns that need to be extracted has been built,
      ## subset the data set.
      d <- data[,use[1:j]]
            
      ## Fix activity labels.
      d2 <- merge(ActivityLabels, d, by.x = "idx",  by.y = "ActivityByNum")
      
      d2$idx <- NULL
      
      ## order the data by subject and Activity.
      d2 <- d2[order(d2$subject,d2$Activity),]
      
      ag <- aggregate(d2, by=list(subjectID = d2$subject, ActivityName = d2$Activity), FUN=mean)
      
      ag$subject <- NULL
      ag$Activity <- NULL
      
      c <- names(ag)
      j <- 1
      for( i in names(ag) ){
         if (identical(i, "subjectID") == FALSE && identical(i,"ActivityName") == FALSE)
           c[j] <- paste(i,"AVG", sep = "")
         j <- j+1  
      }
       
      names(ag) <- c
      
      write.table(ag, "tidydata.txt", sep = " ")
      
      ##print("str(ag) is ") 
      ##print(str(ag))
      
      ##print("head(ag) is ")
      ##print(head(ag))
      
 }
  else{
      ## print error message.
      print("Can't find the data directory UCI HAR Dataset! Exiting") 
  }
} ## end runAnalysis