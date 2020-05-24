# This script performs the next steps:
# Step 1: Merges the training and the test sets to create one data set.
# Step 2: Extracts only the measurements on the mean and standard deviation for each measurement.
# Step 3: Uses descriptive activity names to name the activities in the data set
# Step 4: Appropriately labels the data set with descriptive variable names.
# Step 5: From the data set in step 4, creates a second, independent tidy data set 
#         with the average of each variable for each activity and each subject.
#
# Step 1
# Preparation: All data in: 
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# has been unzipped. The working directory should be set to the directory
# 'UCI HAR Dataset', which is the main folder from the zip-file.
# libraries used: stringr, dplyr
#
# Now read all necessary files in data frames
#
# Train data sets:
# 1 subjects
subject_train <- read.table("./train/subject_train.txt")
# 2 measures
x_train <- read.table("./train/X_train.txt")
# 3 training labels
# Six values can occur in this file:
#=========================================
# 1 WALKING
# 2 WALKING_UPSTAIRS
# 3 WALKING_DOWNSTAIRS
# 4 SITTING
# 5 STANDING
# 6 LAYING
#=========================================
y_train <- read.table("./train/y_train.txt")

# Test data sets:
# 1 subjects
subject_test <- read.table("./test/subject_test.txt")
# 2 measures
x_test <- read.table("./test/X_test.txt")
# 3 labels
y_test <- read.table("./test/y_test.txt")

# Column names for the x- and y-measurements:
# Column one (V1) contains a sequence number
# Column two (V2) contains the feature names
features <- read.table("features.txt")

# For the subject data set: Each row identifies the subject 
# who performed the activity for each window sample. Its range is from 1 to 30.
# Add a column name to both sets
names(subject_train)<-"subject"
names(subject_test)<-"subject"

# Also add column names to the x-measurement data sets
names(x_train) <- features$V2
names(x_test) <- features$V2

# And add a column name to the labels data sets
names(y_train) <- "KindOfTraining"
names(y_test) <- "KindOfTraining"

# subject_test, y_test and x_test all contain 2947 observations, which will be column bound:
total_test <- cbind(subject_test, y_test, x_test)

# subject_train, y_train and x_train all contain 7352 observations, which will be column bound:
total_train <- cbind(subject_train, y_train, x_train)

# Now subject_test and subject_train all contain 1 + 1 + 561 = 563 columns,
# So these can be combined in one total data frame
total <- rbind(total_test, total_train)

# Step 2
# Determine the columns we want to keep for further analysis.
# These are all columns with 'mean()' or 'std' (standard deviation) in the column name
# plus the first two columns, which we named subject and KindOfTraining.
# We also need to search for the parenthesis in the mean-columns, because if we don't 
# we also will select e.g. column angle(tBodyAccMean,gravity)
columns_to_select <- grepl("^subject|^KindOfTraining|std|mean\\(\\)", names(total))

# Now keep only the above selected columns:
total <- total[, columns_to_select] 

## STEP 3: Uses descriptive activity names to name the activities
## in the data set.

# Use the activity names instead of the activity numbers in the KindOfTraining column.
total$KindOfTraining <- factor(total$KindOfTraining, 
                               labels=c("Walking", "Walking Upstairs", 
                                        "Walking Downstairs", "Sitting", 
                                        "Standing", "Laying"))

## STEP 4: Appropriately labels the data set with descriptive
## activity names. 
# Get rid of the parentheses in the column names
colNames <- names(total)
colNames <- str_replace_all(colNames, "[()]","")
# t at the beginning of a columnname stands for time
# f at the beginning of a columnname stands for frequency
colNames <- str_replace_all(colNames, c("^t"="time", "^f"="freq"))
names(total) <- colNames

## STEP 5: Creates a second, independent tidy data set with the
## average of each variable for each activity and each subject.
aggregated <- aggregate(total[,3:68],list(total$subject, total$KindOfTraining),mean)
## Sort by subject and KindOfTraining
## The aggregate function has changed the column names of subject and KindOfTraining into Group.1 and Group.2
sorted <- arrange(aggregated,aggregated$Group.1, aggregated$Group.2)
# And rename the first two columns back to the old names
names(sorted)[1]<-"subject"
names(sorted)[2]<-"KindOfTraining"

# write the tidy data set to a file. I would prefer a csv-file, but 
# the instructions tell us to write the output using write.table().
# write.csv(sorted, "tidy.csv", row.names=FALSE)
write.table(sorted, "tidy.txt", row.names = FALSE)
