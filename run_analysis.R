## Some initialization and
## 1) Merges the training and the test sets to create one data set.

fileName <- "uci-har-dataset.zip"
fileUri <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

if ( !file.exists(fileName)) {
  download.file(url = fileUri, destfile = fileName )
  unzip(fileName)
}

activities <- read.table('./UCI HAR Dataset/activity_labels.txt')
features <- read.table('./UCI HAR Dataset/features.txt')

# Merge test data
test.subject  <- read.table('./UCI HAR Dataset/test/subject_test.txt')
test.x        <- read.table('./UCI HAR Dataset/test/X_test.txt')
test.activity <- read.table('./UCI HAR Dataset/test/y_test.txt')

test <- data.frame(test.subject, test.activity, test.x)

# Merge train data
train.subject  <- read.table('./UCI HAR Dataset/train/subject_train.txt')
train.x        <- read.table('./UCI HAR Dataset/train/X_train.txt')
train.activity <- read.table('./UCI HAR Dataset/train/y_train.txt')

train <- data.frame(train.subject, train.activity, train.x)

# Merge test & train together
data <- rbind(test, train)

# Setup column labels
colNames <- as.character(features[, 2] )
colNames <- c("subject", "activity", colNames)
names(data) <- colNames

## 2) Extract only the measurements on the mean and standard deviation for each measurement.
data.clean <- data[, c(1,2, grep("mean|std", colNames))]

## 3) Use descriptive activity names to name the activities in the data set
activities.labels <- as.character(activities[, 2])
data.clean$activity <- activities[ data.clean$activity, 2 ]

## 4) Appropriately labels the data set with descriptive variable names.
names(data.clean) <- tolower(names(data.clean))
names(data.clean) <- gsub("\\(|\\)", "", names(data.clean))

## 5) From the data set in step 4, creates a second, independent tidy data set 
##    with the average of each variable for each activity and each subject.
data.aggr <- aggregate(x = data.clean[, 3:81], by = list(activities = data.clean$activity, subj = data.clean$subject), FUN=mean)
write.table(x = data.aggr, file = "data_tidy.txt", row.names = FALSE)