Human Activity Recognition Using Smartphones Dataset Version 1.0
================================================================

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory DITEN - Universitą
degli Studi di Genova. Via Opera Pia 11A, I-16145, Genoa, Italy.
<a href="mailto:activityrecognition@smartlab.ws" class="email">activityrecognition@smartlab.ws</a>
www.smartlab.ws

The experiments have been carried out with a group of 30 volunteers
within an age bracket of 19-48 years. Each person performed six
activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING,
STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the
waist. Using its embedded accelerometer and gyroscope, we captured
3-axial linear acceleration and 3-axial angular velocity at a constant
rate of 50Hz. The experiments have been video-recorded to label the data
manually. The obtained dataset has been randomly partitioned into two
sets, where 70% of the volunteers was selected for generating the
training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by
applying noise filters and then sampled in fixed-width sliding windows
of 2.56 sec and 50% overlap (128 readings/window). The sensor
acceleration signal, which has gravitational and body motion components,
was separated using a Butterworth low-pass filter into body acceleration
and gravity. The gravitational force is assumed to have only low
frequency components, therefore a filter with 0.3 Hz cutoff frequency
was used. From each window, a vector of features was obtained by
calculating variables from the time and frequency domain. See
‘features\_info.txt’ for more details.

For each record it is provided:
===============================

-   Triaxial acceleration from the accelerometer (total acceleration)
    and the estimated body acceleration.
-   Triaxial Angular velocity from the gyroscope.
-   A 561-feature vector with time and frequency domain variables.
-   Its activity label.
-   An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

-   ‘README.txt’
-   ‘features\_info.txt’: Shows information about the variables used on
    the feature vector.
-   ‘features.txt’: List of all features.
-   ‘activity\_labels.txt’: Links the class labels with their activity
    name.
-   ‘train/X\_train.txt’: Training set.
-   ‘train/y\_train.txt’: Training labels.
-   ‘test/X\_test.txt’: Test set.
-   ‘test/y\_test.txt’: Test labels.

The following files are available for the train and test data. Their
descriptions are equivalent.

-   ‘train/subject\_train.txt’: Each row identifies the subject who
    performed the activity for each window sample. Its range is from 1
    to 30.
-   ‘train/Inertial Signals/total\_acc\_x\_train.txt’: The acceleration
    signal from the smartphone accelerometer X axis in standard gravity
    units ‘g’. Every row shows a 128 element vector. The same
    description applies for the ‘total\_acc\_x\_train.txt’ and
    ‘total\_acc\_z\_train.txt’ files for the Y and Z axis.
-   ‘train/Inertial Signals/body\_acc\_x\_train.txt’: The body
    acceleration signal obtained by subtracting the gravity from the
    total acceleration.
-   ‘train/Inertial Signals/body\_gyro\_x\_train.txt’: The angular
    velocity vector measured by the gyroscope for each window sample.
    The units are radians/second.

Notes:
======

-   Features are normalized and bounded within \[-1,1\].
-   Each feature vector is a row on the text file.

For more information about this dataset contact:
<a href="mailto:activityrecognition@smartlab.ws" class="email">activityrecognition@smartlab.ws</a>

License:
========

Use of this dataset in publications must be acknowledged by referencing
the following publication \[1\]

\[1\] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and
Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a
Multiclass Hardware-Friendly Support Vector Machine. International
Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz,
Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or
explicit can be addressed to the authors or their institutions for its
use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita.
November 2012.

Feature Selection
=================

The features selected for this database come from the accelerometer and
gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain
signals (prefix ‘t’ to denote time) were captured at a constant rate of
50 Hz. Then they were filtered using a median filter and a 3rd order low
pass Butterworth filter with a corner frequency of 20 Hz to remove
noise. Similarly, the acceleration signal was then separated into body
and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ)
using another low pass Butterworth filter with a corner frequency of 0.3
Hz.

Subsequently, the body linear acceleration and angular velocity were
derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and
tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional
signals were calculated using the Euclidean norm (tBodyAccMag,
tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these
signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ,
fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the ‘f’ to
indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for
each pattern:  
(-XYZ) is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ tGravityAcc-XYZ tBodyAccJerk-XYZ tBodyGyro-XYZ
tBodyGyroJerk-XYZ tBodyAccMag tGravityAccMag tBodyAccJerkMag
tBodyGyroMag tBodyGyroJerkMag fBodyAcc-XYZ fBodyAccJerk-XYZ
fBodyGyro-XYZ fBodyAccMag fBodyAccJerkMag fBodyGyroMag fBodyGyroJerkMag

The set of variables that were estimated from these signals are:

mean(): Mean value std(): Standard deviation mad(): Median absolute
deviation max(): Largest value in array min(): Smallest value in array
sma(): Signal magnitude area energy(): Energy measure. Sum of the
squares divided by the number of values. iqr(): Interquartile range
entropy(): Signal entropy arCoeff(): Autorregresion coefficients with
Burg order equal to 4 correlation(): correlation coefficient between two
signals maxInds(): index of the frequency component with largest
magnitude meanFreq(): Weighted average of the frequency components to
obtain a mean frequency skewness(): skewness of the frequency domain
signal kurtosis(): kurtosis of the frequency domain signal
bandsEnergy(): Energy of a frequency interval within the 64 bins of the
FFT of each window. angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window
sample. These are used on the angle() variable:

gravityMean tBodyAccMean tBodyAccJerkMean tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in
‘features.txt’

Below is the code for creating necessary data frame for the project with cut output examples to show the result
===============================================================================================================

**First of all download and unzip the data**

``` r
# Download and unzip the data.
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "GaCDCP.zip")
unzip("GaCDCP.zip")
```

**Read needed data files to create data sets**

``` r
# Read needed data files to create data sets.
activitytest <- read.table("./UCI HAR Dataset/test/y_test.txt")
activitytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
subjecttest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subjecttrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
featurestest <- read.table("./UCI HAR Dataset/test/x_test.txt")
featurestrain <- read.table("./UCI HAR Dataset/train/x_train.txt")
```

**Bind data sets to make whole data available**

``` r
# Bind data sets to make whole data available.
activity <- rbind(activitytrain,activitytest)
subject <- rbind(subjecttrain,subjecttest)
features <- rbind(featurestrain,featurestest)
```

**Get the variable names**

``` r
# Get the variable names.
featuresnames <- read.table("./UCI HAR Dataset/features.txt")
```

**Name the variables**

``` r
# Name the variables.
names(activity) <- "activity"
names(subject) <- "subject"
names(features) <- featuresnames$V2
```

**Merge all data sets to create a data frame with overall data inside**

``` r
# Merge all data sets to create a data frame with overall data inside.
overalldata <- cbind(subject,activity)
overalldata <- cbind(overalldata,features)
```

**Extract only the measurements on the mean and standard deviation for
each** **measurement**

``` r
# Extract only the measurements on the mean and standard deviation for each
# measurement.
needednames <- featuresnames$V2[grep("mean|std|Mean", featuresnames$V2)]
```

**Subset overall data frame to get needed data frame**

``` r
# Subset overall data frame to get needed data frame.
neededdata <- overalldata[,c("subject","activity",needednames)]
```

**Get activity labels**

``` r
# Get activity labels.
activitylabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
```

**Assign descriptive activity labels and get proper view of needed data
frame**

``` r
# Assign descriptive activity labels and get proper view of needed data frame.
neededdata$activity <- factor(neededdata$activity,levels = activitylabels$V1,labels = activitylabels$V2)
neededdata$subject <- sort(neededdata$subject)
```

**Appropriately label the data set with descriptive variable names**

``` r
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
```

**Short output of needed data frame with some variables**

    ##   subject activity TimeBodyAccelerometerMeanX TimeBodyAccelerometerMeanY TimeBodyAccelerometerMeanZ
    ## 1       1 STANDING                  0.2885845                -0.02029417                 -0.1329051
    ## 2       1 STANDING                  0.2784188                -0.01641057                 -0.1235202
    ## 3       1 STANDING                  0.2796531                -0.01946716                 -0.1134617
    ## 4       1 STANDING                  0.2791739                -0.02620065                 -0.1232826
    ## 5       1 STANDING                  0.2766288                -0.01656965                 -0.1153619
    ## 6       1 STANDING                  0.2771988                -0.01009785                 -0.1051373

**Load *dplyr* package for less typing and human friendly script**

``` r
# Load dplyr package for less typing.
library(dplyr)
```

**From the final data set create a second, independent tidy data set
with the** **average of each variable for each activity and each
subject**

``` r
# From the final data set create a second, independent tidy data set with the
# average of each variable for each activity and each subject.
newtidydata <- neededdata %>%
                group_by(subject,activity) %>%
                summarise_all(mean)
```

**Unload *dplyr* package**

``` r
# Unload dplyr package.
detach("package:dplyr", unload = TRUE)
```

**Short output of new tidy data frame with some variables**

    ## # A tibble: 10 x 5
    ## # Groups:   subject [2]
    ##    subject activity           TimeBodyAccelerometerMeanX TimeBodyAccelerometerMeanY TimeBodyAccelerometerMeanZ
    ##      <int> <fct>                                   <dbl>                      <dbl>                      <dbl>
    ##  1       1 WALKING                                 0.277                   -0.0174                     -0.111 
    ##  2       1 WALKING_UPSTAIRS                        0.255                   -0.0240                     -0.0973
    ##  3       1 WALKING_DOWNSTAIRS                      0.289                   -0.00992                    -0.108 
    ##  4       1 SITTING                                 0.261                   -0.00131                    -0.105 
    ##  5       1 STANDING                                0.279                   -0.0161                     -0.111 
    ##  6       1 LAYING                                  0.222                   -0.0405                     -0.113 
    ##  7       2 WALKING                                 0.276                   -0.0172                     -0.113 
    ##  8       2 WALKING_UPSTAIRS                        0.258                   -0.0306                     -0.105 
    ##  9       2 WALKING_DOWNSTAIRS                      0.291                   -0.0190                     -0.118 
    ## 10       2 SITTING                                 0.257                   -0.00350                    -0.0984

**Save to a new file**

``` r
# Save to a new file.
write.table(newtidydata,"newtidydata.txt",row.names = FALSE)
```

**Remove unnecessary data to free up memory**

``` r
# Remove unnecessary data to free up memory.
rm(activity,activitylabels,activitytest,activitytrain)
rm(features,featuresnames,featurestest,featurestrain)
rm(subject,subjecttest,subjecttrain,needednames)
rm(overalldata)
```
