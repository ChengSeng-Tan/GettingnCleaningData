analyse <- function(){
  
  ## Reading Features and ActivityLabels vector
  features <- read.csv("features.txt", sep = "", header = FALSE, stringsAsFactors=FALSE)
  activities <- read.csv("activity_labels.txt", sep = "", header = FALSE, stringsAsFactors=FALSE)
  ## give descriptive column names for later use
  names(features)<-c("id","feature")
  names(activities)<-c("id","activity")

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

  ## Assign Measurement Names to Column Names of MergeData
  names(mergedData) <- features$feature
  
  ## Extract only mean & std columns
  mergedData <- mergedData[ grepl("std|mean", names(mergedData), ignore.case = TRUE) ] 
  
  ## modify variable names starting with t & f to Time & Freq respectively, making it more descriptive
  colnames(mergedData)<-lapply(colnames(mergedData), function(c) {c=sub("^t","Time",c);c=sub("^f","Freq",c)} )
   
  # Construct the Description Activity Name and merge into the combined set
  mergedMeasures <- merge(mergedMeasures, activities, by.x = "measureid", by.y = "id")[2]
  mergedData <- cbind(mergedSubjects, mergedMeasures, mergedData)

  ## Group mergedData by Subject, Activity, pipe results into computing the mean across all measures
  library(dplyr)
  tidyData<-group_by(mergedData, subject, activity) %>%
  summarise_all(mean)

  ## Write out to text file, leave out the row names
  write.table(tidyData,file="tidyData.txt",row.names=FALSE)
}