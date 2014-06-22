# setwd("E:/Courses/DSS3 - Getting and Cleaning Data/project")

require(stringr)
require(reshape2)
require(Hmisc)

# unzip the UCI HAR Dataset into the 'data' sub-directory, if needed
if(!file.exists("./data")) {
    message("unzipping UCI HAR data set...")
    unzip("UCI HAR Dataset.zip")
    file.rename("UCI HAR Dataset", "data")
    # unzip("UCI HAR Dataset.zip", junkpaths=TRUE, exdir="./data")
}

getset <- function (set) {
    ## get one set of raw data and merge subject, activity and features data sets 
    ## into one single data frame
    
    # set paths to data sets
    subject.path <- paste("./data/", set, "/subject_", set, ".txt", sep="")
    X.path <- paste("./data/", set, "/X_", set, ".txt", sep="")
    Y.path <- paste("./data/", set, "/Y_", set, ".txt", sep="")
    
    # read and merge the three data sets
    data.set <- cbind(read.table(Y.path, col.names=c("activity")),
                      read.table(subject.path, col.names=c("subject")),
                      read.table(X.path, colClasses="numeric"))
    data.set
}

## Step 1
## Merges the training and the test sets to create one data set
message("Step 1: merging training and test sets...")

data.test <- getset("test")
data.train <- getset("train") 
data.raw <- rbind(data.train, data.test)

## step 2
## Extracts only the measurements on the mean and standard deviation for each
## measurement.
message("Step 2: extracting measurements on mean and standard deviation...")
# get the list of features
feature <- read.table("./data/features.txt", col.names=c("seq.no", "label"), stringsAsFactors=FALSE)
keep <- which(str_detect(feature$label, "mean\\(\\)|std\\(\\)"))
data.raw <- data.raw[, c(1:2, keep+2)]

## step 3 
## Uses descriptive activity names to name the activities in the data set
message("Step 3: setting descriptive activity names...")

# recast the activity into factor names after removing "_" and word capitalization.
activity <- read.table("./data/activity_labels.txt", col.names=c("code", "label"))
activity$label <- sapply(str_split(tolower(activity$label), "_"), capitalize)
activity$label <- sapply(activity$label, paste, collapse=" ")
data.raw$activity <- factor(data.raw$activity, label=activity$label)
data.raw$subject <- factor(data.raw$subject)

## step 4
## Appropriately labels the data set with descriptive variable names
message("Step 4: setting desciptive variable names...")
# set the features names
feature$label <- str_replace(feature$label, "-mean\\(\\)-", "Mean")
feature$label <- str_replace(feature$label, "-std\\(\\)-", "Std")
feature$label <- str_replace(feature$label, "-mean\\(\\)", "Mean")
feature$label <- str_replace(feature$label, "-std\\(\\)", "Std")
feature$label <- str_replace(feature$label, "tBody", "TimeBody")
feature$label <- str_replace(feature$label, "tGravity", "TimeGravity")
feature$label <- str_replace(feature$label, "fBody", "FftBody")
feature$label <- str_replace(feature$label, "Gyro", "Gyroscope")
feature$label <- str_replace(feature$label, "Mag", "Magnitude")
feature$label <- str_replace(feature$label, "Acc", "Accelerometer")
names(data.raw)[3:length(names(data.raw))] <- feature[keep, 2]

## Step 5
## Creates a second, independent tidy data set with the average of each variable
## for each activity and each subject.
message("Step 5: creating tidy data set")

# data.tidy <- ddply(data.raw, .(activity, subject), numcolwise(mean))
data.tidy <-aggregate(data.raw[,-(1:2)], data.raw[,1:2], FUN=mean)
names(data.tidy)[-(1:2)] <- paste("meanOf", names(data.tidy)[-(1:2)], sep="")
write.table(data.tidy, file="./data/HAR-tidy.txt", row.names=FALSE)


# data.tidy.long <- melt(data.tidy, id=c("activity", "subject"), value.name="average")
