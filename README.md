# Getting_and_Cleaning_Data
The script run_Analysis.R can be executed when the next prerequisited are met:
1) https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip has been downloaded and unzipped.
2) Working Directory should be set to folder UCI HAR Dataset, which is the main folder in the unzipped data.
3) Additional libraries dplyr and stringr should be installed.

############################ CODE BOOK #############################
After running the  script run_Analysis.R, file tidy.txt will have been created in folder UCI HAR Dataset
This file contains 181 rows and 68 columns
The first row contains the column names
The remaining 180 rows contains averages of data collected from the accelerometers from the Samsung Galaxy S smartphone for 30 subjects.
For each subject 6 rows are available representing data collected for 6 kinds of training
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

The next columns (variables) are available in the file
1	subject
2	KindOfTraining
3	timeBodyAcc-mean-X
4	timeBodyAcc-mean-Y
5	timeBodyAcc-mean-Z
6	timeBodyAcc-std-X
7	timeBodyAcc-std-Y
8	timeBodyAcc-std-Z
9	timeGravityAcc-mean-X
10	timeGravityAcc-mean-Y
11	timeGravityAcc-mean-Z
12	timeGravityAcc-std-X
13	timeGravityAcc-std-Y
14	timeGravityAcc-std-Z
15	timeBodyAccJerk-mean-X
16	timeBodyAccJerk-mean-Y
17	timeBodyAccJerk-mean-Z
18	timeBodyAccJerk-std-X
19	timeBodyAccJerk-std-Y
20	timeBodyAccJerk-std-Z
21	timeBodyGyro-mean-X
22	timeBodyGyro-mean-Y
23	timeBodyGyro-mean-Z
24	timeBodyGyro-std-X
25	timeBodyGyro-std-Y
26	timeBodyGyro-std-Z
27	timeBodyGyroJerk-mean-X
28	timeBodyGyroJerk-mean-Y
29	timeBodyGyroJerk-mean-Z
30	timeBodyGyroJerk-std-X
31	timeBodyGyroJerk-std-Y
32	timeBodyGyroJerk-std-Z
33	timeBodyAccMag-mean
34	timeBodyAccMag-std
35	timeGravityAccMag-mean
36	timeGravityAccMag-std
37	timeBodyAccJerkMag-mean
38	timeBodyAccJerkMag-std
39	timeBodyGyroMag-mean
40	timeBodyGyroMag-std
41	timeBodyGyroJerkMag-mean
42	timeBodyGyroJerkMag-std
43	freqBodyAcc-mean-X
44	freqBodyAcc-mean-Y
45	freqBodyAcc-mean-Z
46	freqBodyAcc-std-X
47	freqBodyAcc-std-Y
48	freqBodyAcc-std-Z
49	freqBodyAccJerk-mean-X
50	freqBodyAccJerk-mean-Y
51	freqBodyAccJerk-mean-Z
52	freqBodyAccJerk-std-X
53	freqBodyAccJerk-std-Y
54	freqBodyAccJerk-std-Z
55	freqBodyGyro-mean-X
56	freqBodyGyro-mean-Y
57	freqBodyGyro-mean-Z
58	freqBodyGyro-std-X
59	freqBodyGyro-std-Y
60	freqBodyGyro-std-Z
61	freqBodyAccMag-mean
62	freqBodyAccMag-std
63	freqBodyBodyAccJerkMag-mean
64	freqBodyBodyAccJerkMag-std
65	freqBodyBodyGyroMag-mean
66	freqBodyBodyGyroMag-std
67	freqBodyBodyGyroJerkMag-mean
68	freqBodyBodyGyroJerkMag-std
