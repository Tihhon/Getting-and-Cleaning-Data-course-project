# Download and unzip the data.
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "GaCDCP.zip")
unzip("GaCDCP.zip")

# Read needed data files to create data sets.
activitytest <- read.table("./UCI HAR Dataset/test/y_test.txt")
activitytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
subjecttest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subjecttrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
featurestest <- read.table("./UCI HAR Dataset/test/x_test.txt")
featurestrain <- read.table("./UCI HAR Dataset/train/x_train.txt")

# Bind data sets to make whole data available.
activity <- rbind(activitytrain,activitytest)
subject <- rbind(subjecttrain,subjecttest)
features <- rbind(featurestrain,featurestest)

# Get the variable names.
featuresnames <- read.table("./UCI HAR Dataset/features.txt")

# Name the variables.
names(activity) <- "activity"
names(subject) <- "subject"
names(features) <- featuresnames$V2

# Merge all data sets to create a data frame with overall data inside.
overalldata <- cbind(subject,activity)
overalldata <- cbind(overalldata,features)

# Extract only the measurements on the mean and standard deviation for each measurement.
needednames <- featuresnames$V2[grep("mean|std|Mean", featuresnames$V2)]

# Subset overall data frame to get needed data frame.
neededdata <- overalldata[,c("subject","activity",needednames)]

# Get activity labels.
activitylabels <- read.table("./UCI HAR Dataset/activity_labels.txt")

# Assign descriptive activity labels and get proper view of needed data frame.
neededdata$activity <- factor(neededdata$activity,levels = activitylabels$V1,labels = activitylabels$V2)
neededdata$subject <- sort(neededdata$subject)

# Appropriately label the data set with descriptive variable names.
colnames(neededdata) <- gsub("[\\()|-]","",colnames(neededdata))
colnames(neededdata) <- gsub("Freq", "Frequency", colnames(neededdata))
colnames(neededdata) <- gsub("^f", "Frequency", colnames(neededdata))
colnames(neededdata) <- gsub("^t", "Time", colnames(neededdata))
colnames(neededdata) <- gsub("Acc", "Accelerometer", colnames(neededdata))
colnames(neededdata) <- gsub("Gyro", "Gyroscope", colnames(neededdata))
colnames(neededdata) <- gsub("Mag", "Magnitude", colnames(neededdata))
colnames(neededdata) <- gsub("mean", "Mean", colnames(neededdata))
colnames(neededdata) <- gsub("std", "StandardDeviation", colnames(neededdata))
colnames(neededdata) <- gsub("angle", "Angle", colnames(neededdata))
colnames(neededdata) <- gsub("Anglet", "AngleTime", colnames(neededdata))
colnames(neededdata) <- gsub("BodyBody", "Body", colnames(neededdata))


# Load dplyr package for less typing.
library(dplyr)

# From the final data set create a second, independent tidy data set with the
# average of each variable for each activity and each subject.
newtidydata <- neededdata %>%
                group_by(subject,activity) %>%
                summarise_all(mean)

# Unload dplyr package
detach("package:dplyr", unload = TRUE)

# Save to a new file.
write.table(newtidydata,"newtidydata.txt")

# Remove unnecessary data to free up memory.
rm(activity,activitylabels,activitytest,activitytrain)
rm(features,featuresnames,featurestest,featurestrain)
rm(subject,subjecttest,subjecttrain,needednames)
rm(overalldata)
