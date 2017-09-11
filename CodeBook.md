# Code Book

Code Book describing the variables and summaries calculated, along with units, and any relevant information.

Data contains sensor information of subjects doing various activities such as: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING. All the data which is reported as either mean or standard deviation were then summarized by the average of the values per subject per activitiy

## Process

1) Training and Test data sets were combined of both the x & y files.
2) Variable descriptors were looked up using the features.txt file	
3) Activities were looked up using the activity_labels.txt file
4) All variables have to renamed to more descriptive names as defined in original codebook
5) Activities and Subject columns were named as such in the combined data frame titled "tidy"


## Descriptors

- x
- Subject
- Activities
- TimeBodyAcc-Mean-X
- TimeBodyAcc-Mean-Y
- TimeBodyAcc-Mean-Z
- TimeBodyAcc-StdDev-X
- TimeBodyAcc-StdDev-Y
- TimeBodyAcc-StdDev-Z
- TimeGravityAcc-Mean-X
- TimeGravityAcc-Mean-Y
- TimeGravityAcc-Mean-Z
- TimeGravityAcc-StdDev-X
- TimeGravityAcc-StdDev-Y
- TimeGravityAcc-StdDev-Z
- TimeBodyAccJerk-Mean-X
- TimeBodyAccJerk-Mean-Y
- TimeBodyAccJerk-Mean-Z
- TimeBodyAccJerk-StdDev-X
- TimeBodyAccJerk-StdDev-Y
- TimeBodyAccJerk-StdDev-Z
- TimeBodyGyro-Mean-X
- TimeBodyGyro-Mean-Y
- TimeBodyGyro-Mean-Z
- TimeBodyGyro-StdDev-X
- TimeBodyGyro-StdDev-Y
- TimeBodyGyro-StdDev-Z
- TimeBodyGyroJerk-Mean-X
- TimeBodyGyroJerk-Mean-Y
- TimeBodyGyroJerk-Mean-Z
- TimeBodyGyroJerk-StdDev-X
- TimeBodyGyroJerk-StdDev-Y
- TimeBodyGyroJerk-StdDev-Z
- TimeBodyAccMag-Mean
- TimeBodyAccMag-StdDev
- TimeGravityAccMag-Mean
- TimeGravityAccMag-StdDev
- TimeBodyAccJerkMag-Mean
- TimeBodyAccJerkMag-StdDev
- TimeBodyGyroMag-Mean
- TimeBodyGyroMag-StdDev
- TimeBodyGyroJerkMag-Mean
- TimeBodyGyroJerkMag-StdDev
- FrequencyDomainSignalsBodyAcc-Mean-X
- FrequencyDomainSignalsBodyAcc-Mean-Y
- FrequencyDomainSignalsBodyAcc-Mean-Z
- FrequencyDomainSignalsBodyAcc-StdDev-X
- FrequencyDomainSignalsBodyAcc-StdDev-Y
- FrequencyDomainSignalsBodyAcc-StdDev-Z
- FrequencyDomainSignalsBodyAcc-MeanFrequency-X
- FrequencyDomainSignalsBodyAcc-MeanFrequency-Y
- FrequencyDomainSignalsBodyAcc-MeanFrequency-Z
- FrequencyDomainSignalsBodyAccJerk-Mean-X
- FrequencyDomainSignalsBodyAccJerk-Mean-Y
- FrequencyDomainSignalsBodyAccJerk-Mean-Z
- FrequencyDomainSignalsBodyAccJerk-StdDev-X
- FrequencyDomainSignalsBodyAccJerk-StdDev-Y
- FrequencyDomainSignalsBodyAccJerk-StdDev-Z
- FrequencyDomainSignalsBodyAccJerk-MeanFrequency-X
- FrequencyDomainSignalsBodyAccJerk-MeanFrequency-Y
- FrequencyDomainSignalsBodyAccJerk-MeanFrequency-Z
- FrequencyDomainSignalsBodyGyro-Mean-X
- FrequencyDomainSignalsBodyGyro-Mean-Y
- FrequencyDomainSignalsBodyGyro-Mean-Z
- FrequencyDomainSignalsBodyGyro-StdDev-X
- FrequencyDomainSignalsBodyGyro-StdDev-Y
- FrequencyDomainSignalsBodyGyro-StdDev-Z
- FrequencyDomainSignalsBodyGyro-MeanFrequency-X
- FrequencyDomainSignalsBodyGyro-MeanFrequency-Y
- FrequencyDomainSignalsBodyGyro-MeanFrequency-Z
- FrequencyDomainSignalsBodyAccMag-Mean
- FrequencyDomainSignalsBodyAccMag-StdDev
- FrequencyDomainSignalsBodyAccMag-MeanFrequency
- FrequencyDomainSignalsBodyBodyAccJerkMag-Mean
- FrequencyDomainSignalsBodyBodyAccJerkMag-StdDev
- FrequencyDomainSignalsBodyBodyAccJerkMag-MeanFrequency
- FrequencyDomainSignalsBodyBodyGyroMag-Mean
- FrequencyDomainSignalsBodyBodyGyroMag-StdDev
- FrequencyDomainSignalsBodyBodyGyroMag-MeanFrequency
- FrequencyDomainSignalsBodyBodyGyroJerkMag-Mean
- FrequencyDomainSignalsBodyBodyGyroJerkMag-StdDev
- FrequencyDomainSignalsBodyBodyGyroJerkMag-MeanFrequency