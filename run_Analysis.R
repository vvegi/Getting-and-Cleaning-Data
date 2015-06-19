## Getting and Cleaning Data Course Project

## step 0 is downloading the data into the computer and unzipping the zipped file

if(!file.exists("data")) {
        dir.create("data")
}

if(!file.exists("data/data.zip")){
        fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileUrl, destfile = "data/data.zip")
        dateDownloaded <-  date()        
}

if(!file.exists("data/UCI HAR Dataset")){
        unzip("data/data.zip", exdir = "data")
}

## Part- 1 : Merges the training and the test sets to create one data set.

## Merging the Test data

featureNames <- read.table("data/UCI HAR Dataset/features.txt", header = FALSE)
subTest <- read.table("data/UCI HAR Dataset/test/subject_test.txt", header = FALSE)
names(subTest) <- "SubjectID"
Xtest <- read.table("data/UCI HAR Dataset/test/X_test.txt", header = FALSE)
names(Xtest) <- featureNames$V2
Ytest <- read.table("data/UCI HAR Dataset/test/Y_test.txt", header = FALSE)
names(Ytest) <- "ActivityID"

testData <- cbind(subTest, Xtest, Ytest)

## Merging the Train data

subTrain <- read.table("data/UCI HAR Dataset/train/subject_train.txt", header = FALSE)
names(subTrain) <- "SubjectID"
Xtrain <- read.table("data/UCI HAR Dataset/train/X_train.txt", header = FALSE)
names(Xtrain) <- featureNames$V2
Ytrain <- read.table("data/UCI HAR Dataset/train/Y_train.txt", header = FALSE)
names(Ytrain) <- "ActivityID"

trainData <- cbind(subTrain, Xtrain, Ytrain)

mergedData <- rbind(testData, trainData)

## Part 2 : Extracts only the measurements on the mean and standard deviation for each measurement. 

requiredColumns <- grepl(".*mean.*|.*std.*|.*Mean.*|.*Std.*|SubjectID|ActivityID", names(mergedData))

mergedData <- mergedData[requiredColumns]

## Part 3 : Uses descriptive activity names to name the activities in the data set

labels <- read.table("data/UCI HAR Dataset/activity_labels.txt")
names(labels) <- c("ActivityID", "Activity Name")
mergedDataWithNames <- merge(labels, mergedData, all.x = TRUE)
names(mergedDataWithNames) <- make.names(names(mergedDataWithNames))

## Part 4: Appropriately labels the data set with descriptive variable names. 
names(mergedDataWithNames) <- gsub("^t", "Time ", names(mergedDataWithNames))
names(mergedDataWithNames) <- gsub("^f", "Frequency ", names(mergedDataWithNames))
names(mergedDataWithNames) <- gsub("BodyAcc", "Body Accelaration ", names(mergedDataWithNames))
names(mergedDataWithNames) <- gsub("GravityAcc", "Gravity Accelaration ", names(mergedDataWithNames))
names(mergedDataWithNames) <- gsub("BodyGyro", "Body Gyroscope ", names(mergedDataWithNames))
names(mergedDataWithNames) <- gsub("Mag", "Magnitude", names(mergedDataWithNames))
names(mergedDataWithNames) <- gsub("std", "Standard Deviation", names(mergedDataWithNames))
names(mergedDataWithNames) <- gsub("\\()", "", names(mergedDataWithNames))
names(mergedDataWithNames) <- gsub("\\-", " ", names(mergedDataWithNames))
names(mergedDataWithNames) <- gsub("\\(", " ", names(mergedDataWithNames))
names(mergedDataWithNames) <- gsub("\\)", " ", names(mergedDataWithNames))
names(mergedDataWithNames) <- gsub("Gyro", "Gyroscope", names(mergedDataWithNames))
names(mergedDataWithNames) <- gsub("tBody", "Time Body", names(mergedDataWithNames))
names(mergedDataWithNames) <- gsub("BodyBody", "Body", names(mergedDataWithNames))

## Part 5 :From the data set in step 4, creates a second, independent tidy data set with 
##         the average of each variable for each activity and each subject.
library(plyr)

final <- ddply(mergedDataWithNames, c("ActivityID", "SubjectID"), numcolwise(mean))
write.table(mergedDataWithNames,"Independent Tidy Data.txt", row.names = FALSE)


 
