##########################################################################################################

# coursera getting and cleaning data course project

#Code below does the following
#1) Merges the training and the test sets to create one data set.
#2) Extracts only the measurements on the mean and standard deviation for each measurement.
#3) Uses descriptive activity names to name the activities in the data set
#4) Appropriately labels the data set with descriptive variable names.
#5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##########################################################################################################

# load libraries
library(data.table)
library(dplyr)
library(reshape2)

# download file
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dir <- getwd()
download.file(fileurl, destfile = paste0(dir,"\\","sensor_data.zip"))
unzip(paste0(dir,"\\","sensor_data.zip"))

#load datasets & name data fields
x_train <- read.table(paste0(dir,"\\UCI HAR Dataset\\train\\","X_train.txt"))
y_train <- read.table(paste0(dir,"\\UCI HAR Dataset\\train\\","Y_train.txt"))
subject_train <- read.table(paste0(dir,"\\UCI HAR Dataset\\train\\","subject_train.txt"))

x_test <- read.table(paste0(dir,"\\UCI HAR Dataset\\test\\","X_test.txt"))
y_test <- read.table(paste0(dir,"\\UCI HAR Dataset\\test\\","Y_test.txt"))
subject_test <- read.table(paste0(dir,"\\UCI HAR Dataset\\test\\","subject_test.txt"))

features <- read.table(paste0(dir,"\\UCI HAR Dataset\\","features.txt"))

activities <- read.table(paste0(dir,"\\UCI HAR Dataset\\","activity_labels.txt"))

##########################################################################################################
#Part 1, merge trainin and test sets into one data set
# merge into x
x <- rbind(x_train, x_test)

# merge into y
y <- rbind(y_train, y_test)

# create 'subject' data set
subject <- rbind(subject_train, subject_test)

##########################################################################################################
#Part 2, Extracts only the measurements on the mean and standard deviation for each measurement.
x <- x[,which(grepl("mean|std",features[,2]))]
names(x) <- features[which(grepl("mean|std",features[,2])), 2]


##########################################################################################################
#Part 3, Uses descriptive activity names to name the activities in the data set

y[,1] <- activities[y[,1],2]

names(y) <- "Activities"
names(subject) <- "Subject"


##########################################################################################################
#Part 4, Appropriately labels the data set with descriptive variable names.

dataset <- cbind(x, y, subject)
names(dataset) <- gsub("mean\\(\\)", "Mean", colnames(dataset))
names(dataset) <- gsub("std\\(\\)", "StdDev", colnames(dataset))
names(dataset) <- gsub("meanFreq\\(\\)", "MeanFrequency", colnames(dataset))
names(dataset) <- gsub("^(t)","Time", colnames(dataset))
names(dataset) <- gsub("^(f)","FrequencyDomainSignals", colnames(dataset))
##########################################################################################################
#Part 5, From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

tidy <- dataset %>% group_by(Subject, Activities) %>% summarize_all(funs(mean(., na.rm = TRUE)))

write.table(tidy, "tidy.txt", row.name=FALSE)
write.table(colnames(tidy), "colnames.txt", row.name=FALSE)
