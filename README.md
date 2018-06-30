# Project Requirettments

One R script called run_analysis.R to be created that does the following.

1. Merges the training and the test sets to create one data set.    
2. Extracts only the measurements on the mean and standard deviation for each measurement.  
3. Uses descriptive activity names to name the activities in the data set  
4. Appropriately labels the data set with descriptive variable names.  
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  

## 1. Merges the training and the test sets to create one data set
###    (a) Read the Activity_Labels & Features text files
Read the two text files from `UCI HAR Dataset` containing the Activity and Features labels.  Both read.csv functions has `header=FALSE` as the two text files has no headers. The labels are to be read in as characters by specifiying `stringAsFactors=FALSE`
```  
  ## Reading Features and ActivityLabels vector   
  features <- read.csv("features.txt", sep = "", header = FALSE,   stringsAsFactors=FALSE)  
  activities <- read.csv("activity_labels.txt", sep = "", header = FALSE,   stringsAsFactors=FALSE)  
  ## give descriptive column names for later use  
  names(features)<-c("id","feature")  
  names(activities)<-c("id","activity")  
```
### (b) Read the Test & Training sets data & combine them
Read the Test & Training Sets, each has 3 files, one containing the numeric results, one with the number of the measure and the last containing the subject.  The no. of rows should be the same for the 3 data frames created in each set. Combine the data frames using `rbind()`.
```
  ## Reading Test Set
  testData <- read.csv("test/X_test.txt", sep = "", header = FALSE)
  testMeasures <- read.csv("test/Y_test.txt", sep = "", header = FALSE)
  testSubjects <- read.csv("test/subject_test.txt", sep = "", header = FALSE)
  
  ## Reading Training Sets
  trainData <- read.csv("train/X_train.txt", sep = "", header = FALSE)
  trainMeasures <- read.csv("train/Y_train.txt", sep = "", header = FALSE)  
  trainSubjects <- read.csv("train/subject_train.txt", sep = "", header = FALSE)

  ## Merge the Training & Set Sets
  mergedData <- rbind(testData,trainData)  
  mergedMeasures <- rbind(testMeasures, trainMeasures)
  names(mergedMeasures) <- c("measureid")
  mergedSubjects <- rbind(testSubjects, trainSubjects)
  names(mergedSubjects) <- c("subject")
```
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.  
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names.

```
  names(mergedData) <- features$feature
  ## Extract only the columns that have the mean & std measurements (2)
  mergedData <- mergedData[ grepl("std|mean", names(mergedData), ignore.case = TRUE) ] 
  
  ## modify variable names starting with t & f to Time & Freq respectively, making it more descriptive (4)
  colnames(mergedData)<-lapply(colnames(mergedData), function(c) {c=sub("^t","Time",c);c=sub("^f","Freq",c)} )
   
  # Construct the Description Activity Name and merge into the combined set (3)
  mergedMeasures <- merge(mergedMeasures, activities, by.x = "measureid", by.y = "id")[2]
  mergedData <- cbind(mergedSubjects, mergedMeasures, mergedData)
```
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
The combined mergedData will have duplicate subject and activity, so we use `group_by()` function to aggregrate the measures and calculate the mean.  Once the tidied data is created, we output to a text file using `write.table()`  The description of the data in the tidied file can be found in the [CodeBook.MD](https://github.com/chengseng/GettingnCleaningData/CodeBook.MD) file.
```
  ## Group mergedData by Subject, Activity, pipe results into computing the mean across all measures
  library(dplyr)
  tidyData<-group_by(mergedData, subject, activity) %>%
  summarise_all(mean)

  ## Write out to text file
  write.table(tidyData,"tidyData.txt")
```

# Acknowledgement of Dataset Use

Reference:  

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
