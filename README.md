# Getting_and_Cleaning_Data
The script run_Analysis.R can be executed when the next prerequisited are met:<br>
1) https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip has been downloaded and unzipped.<br>
2) Working Directory should be set to folder UCI HAR Dataset, which is the main folder in the unzipped data.<br>
3) Additional libraries dplyr and stringr should be installed.<br><br><br>

############################ CODE BOOK #############################<br>
After running the  script run_Analysis.R, file tidy.txt will have been created in folder UCI HAR Dataset<br>
This file contains 181 rows and 68 columns<br>
The first row contains the column names<br>
The remaining 180 rows contains averages of data collected from the accelerometers from the Samsung Galaxy S smartphone for 30 subjects.
For each subject 6 rows are available representing data collected for 6 kinds of training<br><br>
1 WALKING<br>
2 WALKING_UPSTAIRS<br>
3 WALKING_DOWNSTAIRS<br>
4 SITTING<br>
5 STANDING<br>
6 LAYING<br><br><br>

The next columns (variables) are available in the file<br>
1	subject<br>
2	KindOfTraining<br>
3	timeBodyAcc-mean-X<br>
4	timeBodyAcc-mean-Y<br>
5	timeBodyAcc-mean-Z<br>
6	timeBodyAcc-std-X<br>
7	timeBodyAcc-std-Y<br>
8	timeBodyAcc-std-Z<br>
9	timeGravityAcc-mean-X<br>
10	timeGravityAcc-mean-Y<br>
11	timeGravityAcc-mean-Z<br>
12	timeGravityAcc-std-X<br>
13	timeGravityAcc-std-Y<br>
14	timeGravityAcc-std-Z<br>
15	timeBodyAccJerk-mean-X<br>
16	timeBodyAccJerk-mean-Y<br>
17	timeBodyAccJerk-mean-Z<br>
18	timeBodyAccJerk-std-X<br>
19	timeBodyAccJerk-std-Y<br>
20	timeBodyAccJerk-std-Z<br>
21	timeBodyGyro-mean-X<br>
22	timeBodyGyro-mean-Y<br><br>
23	timeBodyGyro-mean-Z<br>
24	timeBodyGyro-std-X<br>
25	timeBodyGyro-std-Y<br>
26	timeBodyGyro-std-Z<br>
27	timeBodyGyroJerk-mean-X<br>
28	timeBodyGyroJerk-mean-Y<br>
29	timeBodyGyroJerk-mean-Z<br>
30	timeBodyGyroJerk-std-X<br>
31	timeBodyGyroJerk-std-Y<br>
32	timeBodyGyroJerk-std-Z<br>
33	timeBodyAccMag-mean<br>
34	timeBodyAccMag-std<br>
35	timeGravityAccMag-mean<br>
36	timeGravityAccMag-std<br>
37	timeBodyAccJerkMag-mean<br>
38	timeBodyAccJerkMag-std<br>
39	timeBodyGyroMag-mean<br>
40	timeBodyGyroMag-std<br>
41	timeBodyGyroJerkMag-mean<br>
42	timeBodyGyroJerkMag-std<br>
43	freqBodyAcc-mean-X<br>
44	freqBodyAcc-mean-Y<br>
45	freqBodyAcc-mean-Z<br>
46	freqBodyAcc-std-X<br>
47	freqBodyAcc-std-Y<br>
48	freqBodyAcc-std-Z<br>
49	freqBodyAccJerk-mean-X<br>
50	freqBodyAccJerk-mean-Y<br>
51	freqBodyAccJerk-mean-Z<br>
52	freqBodyAccJerk-std-X<br>
53	freqBodyAccJerk-std-Y<br>
54	freqBodyAccJerk-std-Z<br>
55	freqBodyGyro-mean-X<br>
56	freqBodyGyro-mean-Y<br>
57	freqBodyGyro-mean-Z<br>
58	freqBodyGyro-std-X<br>
59	freqBodyGyro-std-Y<br>
60	freqBodyGyro-std-Z<br>
61	freqBodyAccMag-mean<br>
62	freqBodyAccMag-std<br>
63	freqBodyBodyAccJerkMag-mean<br>
64	freqBodyBodyAccJerkMag-std<br>
65	freqBodyBodyGyroMag-mean<br>
66	freqBodyBodyGyroMag-std<br>
67	freqBodyBodyGyroJerkMag-mean<br>
68	freqBodyBodyGyroJerkMag-std<br>
