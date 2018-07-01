# Tidy Data Code Book
This tidy data set was created from the Test & Training Sets from [Human Activity Recognition Using Smartphones Dataset Version 1.0](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).  The dataset captured the accerlerometer and gyroscope sensor signals of volunteers performing six activities wearing a smartphone.  The 561-feature vector with time and frequency domain variables have been subsetted to scope those with mean and standard deviation in the label name.  This tidy data set averages each of these selected variables for each activity & each subject.  The text file `tidyData.txt` containing the tidy data set can be downloaded from [here](https://github.com/chengseng/GettingnCleaningData/blob/master/tidyData.txt).  You can use `read.table()` to load the data.

# Variable list


No. | Variable | Class | Description 
----|--------- | ------|---------------------------------------
1 | subject | integer | ID of the Subject, 1-30 
2 | activity | factor | LAYING / SITTING / STANDING / WALKING / WALKING_DOWNSTAIRS / WALKING_UPSTAIRS 
3 | TimeBodyAcc.mean...X | numeric | Mean of column variable for  subject & activity  
4 | TimeBodyAcc.mean...Y | numeric | Mean of column variable for  subject & activity  
5 | TimeBodyAcc.mean...Z | numeric | Mean of column variable for  subject & activity 
6 | TimeBodyAcc.std...X | numeric | Mean of column variable for  subject & activity 
7 | TimeBodyAcc.std...Y | numeric | Mean of column variable for  subject & activity 
8 | TimeBodyAcc.std...Z | numeric | Mean of column variable for  subject & activity 
9 | TimeGravityAcc.mean...X | numeric | Mean of column variable for  subject & activity 
10 | TimeGravityAcc.mean...Y | numeric | Mean of column variable for  subject & activity 
11 | TimeGravityAcc.mean...Z | numeric | Mean of column variable for  subject & activity 
12 | TimeGravityAcc.std...X | numeric | Mean of column variable for  subject & activity 
13 | TimeGravityAcc.std...Y | numeric | Mean of column variable for  subject & activity 
14 | TimeGravityAcc.std...Z | numeric | Mean of column variable for  subject & activity 
15 | TimeBodyAccJerk.mean...X | numeric | Mean of column variable for  subject & activity 
16 | TimeBodyAccJerk.mean...Y | numeric | Mean of column variable for  subject & activity 
17 | TimeBodyAccJerk.mean...Z | numeric | Mean of column variable for  subject & activity 
18 | TimeBodyAccJerk.std...X | numeric | Mean of column variable for  subject & activity 
19 | TimeBodyAccJerk.std...Y | numeric | Mean of column variable for  subject & activity 
20 | TimeBodyAccJerk.std...Z | numeric | Mean of column variable for  subject & activity 
21 | TimeBodyGyro.mean...X | numeric | Mean of column variable for  subject & activity 
22 | TimeBodyGyro.mean...Y | numeric | Mean of column variable for  subject & activity 
23 | TimeBodyGyro.mean...Z | numeric | Mean of column variable for  subject & activity 
24 | TimeBodyGyro.std...X | numeric | Mean of column variable for  subject & activity 
25 | TimeBodyGyro.std...Y | numeric | Mean of column variable for  subject & activity 
26 | TimeBodyGyro.std...Z | numeric | Mean of column variable for  subject & activity 
27 | TimeBodyGyroJerk.mean...X | numeric | Mean of column variable for  subject & activity 
28 | TimeBodyGyroJerk.mean...Y | numeric | Mean of column variable for  subject & activity 
29 | TimeBodyGyroJerk.mean...Z | numeric | Mean of column variable for  subject & activity 
30 | TimeBodyGyroJerk.std...X | numeric | Mean of column variable for  subject & activity 
31 | TimeBodyGyroJerk.std...Y | numeric | Mean of column variable for  subject & activity 
32 | TimeBodyGyroJerk.std...Z | numeric | Mean of column variable for  subject & activity 
33 | TimeBodyAccMag.mean.. | numeric | Mean of column variable for  subject & activity 
34 | TimeBodyAccMag.std.. | numeric | Mean of column variable for  subject & activity 
35 | TimeGravityAccMag.mean.. | numeric | Mean of column variable for  subject & activity 
36 | TimeGravityAccMag.std.. | numeric | Mean of column variable for  subject & activity 
37 | TimeBodyAccJerkMag.mean.. | numeric | Mean of column variable for  subject & activity 
38 | TimeBodyAccJerkMag.std.. | numeric | Mean of column variable for  subject & activity 
39 | TimeBodyGyroMag.mean.. | numeric | Mean of column variable for  subject & activity 
40 | TimeBodyGyroMag.std.. | numeric | Mean of column variable for  subject & activity 
41 | TimeBodyGyroJerkMag.mean.. | numeric | Mean of column variable for  subject & activity 
42 | TimeBodyGyroJerkMag.std.. | numeric | Mean of column variable for  subject & activity 
43 | FreqBodyAcc.mean...X | numeric | Mean of column variable for  subject & activity 
44 | FreqBodyAcc.mean...Y | numeric | Mean of column variable for  subject & activity 
45 | FreqBodyAcc.mean...Z | numeric | Mean of column variable for  subject & activity 
46 | FreqBodyAcc.std...X | numeric | Mean of column variable for  subject & activity 
47 | FreqBodyAcc.std...Y | numeric | Mean of column variable for  subject & activity 
48 | FreqBodyAcc.std...Z | numeric | Mean of column variable for  subject & activity 
49 | FreqBodyAcc.meanFreq...X | numeric | Mean of column variable for  subject & activity 
50 | FreqBodyAcc.meanFreq...Y | numeric | Mean of column variable for  subject & activity 
51 | FreqBodyAcc.meanFreq...Z | numeric | Mean of column variable for  subject & activity 
52 | FreqBodyAccJerk.mean...X | numeric | Mean of column variable for  subject & activity 
53 | FreqBodyAccJerk.mean...Y | numeric | Mean of column variable for  subject & activity 
54 | FreqBodyAccJerk.mean...Z | numeric | Mean of column variable for  subject & activity 
55 | FreqBodyAccJerk.std...X | numeric | Mean of column variable for  subject & activity 
56 | FreqBodyAccJerk.std...Y | numeric | Mean of column variable for  subject & activity 
57 | FreqBodyAccJerk.std...Z | numeric | Mean of column variable for  subject & activity 
58 | FreqBodyAccJerk.meanFreq...X | numeric | Mean of column variable for  subject & activity 
59 | FreqBodyAccJerk.meanFreq...Y | numeric | Mean of column variable for  subject & activity 
60 | FreqBodyAccJerk.meanFreq...Z | numeric | Mean of column variable for  subject & activity 
61 | FreqBodyGyro.mean...X | numeric | Mean of column variable for  subject & activity 
62 | FreqBodyGyro.mean...Y | numeric | Mean of column variable for  subject & activity 
63 | FreqBodyGyro.mean...Z | numeric | Mean of column variable for  subject & activity 
64 | FreqBodyGyro.std...X | numeric | Mean of column variable for  subject & activity 
65 | FreqBodyGyro.std...Y | numeric | Mean of column variable for  subject & activity 
66 | FreqBodyGyro.std...Z | numeric | Mean of column variable for  subject & activity 
67 | FreqBodyGyro.meanFreq...X | numeric | Mean of column variable for  subject & activity 
68 | FreqBodyGyro.meanFreq...Y | numeric | Mean of column variable for  subject & activity 
69 | FreqBodyGyro.meanFreq...Z | numeric | Mean of column variable for  subject & activity 
70 | FreqBodyAccMag.mean.. | numeric | Mean of column variable for  subject & activity 
71 | FreqBodyAccMag.std.. | numeric | Mean of column variable for  subject & activity 
72 | FreqBodyAccMag.meanFreq.. | numeric | Mean of column variable for  subject & activity 
73 | FreqBodyBodyAccJerkMag.mean.. | numeric | Mean of column variable for  subject & activity 
74 | FreqBodyBodyAccJerkMag.std.. | numeric | Mean of column variable for  subject & activity 
75 | FreqBodyBodyAccJerkMag.meanFreq.. | numeric | Mean of column variable for  subject & activity 
76 | FreqBodyBodyGyroMag.mean.. | numeric | Mean of column variable for  subject & activity 
77 | FreqBodyBodyGyroMag.std.. | numeric | Mean of column variable for  subject & activity 
78 | FreqBodyBodyGyroMag.meanFreq.. | numeric | Mean of column variable for  subject & activity 
79 | FreqBodyBodyGyroJerkMag.mean.. | numeric | Mean of column variable for  subject & activity 
80 | FreqBodyBodyGyroJerkMag.std.. | numeric | Mean of column variable for  subject & activity 
81 | FreqBodyBodyGyroJerkMag.meanFreq.. | numeric | Mean of column variable for  subject & activity 
82 | angle.tBodyAccMean.gravity. | numeric | Mean of column variable for  subject & activity 
83 | angle.tBodyAccJerkMean..gravityMean. | numeric | Mean of column variable for  subject & activity 
84 | angle.tBodyGyroMean.gravityMean. | numeric | Mean of column variable for  subject & activity 
85 | angle.tBodyGyroJerkMean.gravityMean. | numeric | Mean of column variable for  subject & activity 
86 | angle.X.gravityMean. | numeric | Mean of column variable for  subject & activity 
87 | angle.Y.gravityMean. | numeric | Mean of column variable for  subject & activity 
88 | angle.Z.gravityMean. | numeric | Mean of column variable for  subject & activity 
