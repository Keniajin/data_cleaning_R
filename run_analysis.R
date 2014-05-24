# # library(Hmisc)
# label(mydata$myvar) <- "Variable label for variable myvar"

# You should create one R script called run_analysis.R that does the following. 

# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement. 
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive activity names. 
# Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


#Merges the training and the test sets to create one data set

#read the datasets
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
x_test <-  read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
features <- read.table("UCI HAR Dataset/features.txt")
labels <- read.table("UCI HAR Dataset/activity_labels.txt")

#merge the X datasets
x_data <- rbind(x_train,x_test)
names(x_data) <- features$V2

#merge the Y datasets
y_data <- rbind(y_train,y_test)
colnames(y_data) <- "activity"

#Extracts only the measurements on the mean and standard deviation for each measurement. 
data <- x_data[,grep("mean()|std()"  , names(x_data), value=TRUE)]
data <- cbind(y_data ,data)
# Uses descriptive activity names to name the activities in the data set
data$activity <- factor(data$activity, levels=labels$V1, labels=labels$V2)

#Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#mean(data[data$Activity=="WALKING",2])
#mean(data[data$Activity=="STANDING",2])
require(plyr)
average.Data <- ddply(data, .(activity), colwise(mean))

#export the tidy data
write.table(data,"datasets/tidy_humanActivityData.txt",sep="")
write.table(average.Data ,"datasets/average_humanActivityData.txt",sep="")



