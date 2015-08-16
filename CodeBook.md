
Variables in saAvg.txt


"Activities"  
        The name of the activity recorded   
        Values:  
                WALKING  
                WALKING_UPSTAIRS  
                WALKING_DOWNSTAIRS  
                SITTING  
                STANDING  
                LAYING  
"Subject"  
        The number of the subject who performed the activity  
        Values: 1 through 30  

                
The remaining variables represent the means and standard deviations per Activity and Subject of various measurements recorded by Samsung phones on the subjects in question. 

I'm adding a note here and in the README because of the concern about naming variables so that they are readable:
I have kept the original names that the Samsung study used rather than guessing about how best to turn these names into a what amounts to a sentence partly because I don't like guessing, and partly because I fundamentally disagree with the idea having dozens and dozens of variable with names far longer than the too-long names we already have makes the data "tidy".

The reality is that no one would read this file to actually use the data given if they didn't understand what these abbreviations mean, and if those people using it were trying to present it to someone non-technical, they simply could not use all of this data. It would have to be turned into some summarization that cut out far more details than we've done.

As such to me this is as readable as we can get things.

Quote below are the relevant parts of the original explanation by those who did the study:

"
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ  
tGravityAcc-XYZ  
tBodyAccJerk-XYZ  
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ  
tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag  
fBodyAcc-XYZ  
fBodyAccJerk-XYZ  
fBodyGyro-XYZ  
fBodyAccMag  
fBodyAccJerkMag  
fBodyGyroMag  
fBodyGyroJerkMag  

The set of variables that were estimated from these signals are: 

mean(): Mean value  
std(): Standard deviation""  

The complete list of these remaining variables is:

"tBodyAcc-mean()-X"  
"tBodyAcc-mean()-Y"  
"tBodyAcc-mean()-Z"  
"tBodyAcc-std()-X"  
"tBodyAcc-std()-Y"  
"tBodyAcc-std()-Z"  
"tGravityAcc-mean()-X"  
"tGravityAcc-mean()-Y"  
"tGravityAcc-mean()-Z"  
"tGravityAcc-std()-X"  
"tGravityAcc-std()-Y"  
"tGravityAcc-std()-Z"  
"tBodyAccJerk-mean()-X"  
"tBodyAccJerk-mean()-Y"  
"tBodyAccJerk-mean()-Z"  
"tBodyAccJerk-std()-X"  
"tBodyAccJerk-std()-Y"  
"tBodyAccJerk-std()-Z"  
"tBodyGyro-mean()-X"  
"tBodyGyro-mean()-Y"  
"tBodyGyro-mean()-Z"  
"tBodyGyro-std()-X"  
"tBodyGyro-std()-Y"  
"tBodyGyro-std()-Z"  
"tBodyGyroJerk-mean()-X"  
"tBodyGyroJerk-mean()-Y"  
"tBodyGyroJerk-mean()-Z"  
"tBodyGyroJerk-std()-X"  
"tBodyGyroJerk-std()-Y"  
"tBodyGyroJerk-std()-Z"  
"tBodyAccMag-mean()"  
"tBodyAccMag-std()"  
"tGravityAccMag-mean()"  
"tGravityAccMag-std()"  
"tBodyAccJerkMag-mean()"  
"tBodyAccJerkMag-std()"  
"tBodyGyroMag-mean()"  
"tBodyGyroMag-std()"  
"tBodyGyroJerkMag-mean()"  
"tBodyGyroJerkMag-std()"  
"fBodyAcc-mean()-X"  
"fBodyAcc-mean()-Y"  
"fBodyAcc-mean()-Z"  
"fBodyAcc-std()-X"  
"fBodyAcc-std()-Y"  
"fBodyAcc-std()-Z"  
"fBodyAccJerk-mean()-X"  
"fBodyAccJerk-mean()-Y"  
"fBodyAccJerk-mean()-Z"  
"fBodyAccJerk-std()-X"    
"fBodyAccJerk-std()-Y"    
"fBodyAccJerk-std()-Z"  
"fBodyGyro-mean()-X"    
"fBodyGyro-mean()-Y"  
"fBodyGyro-mean()-Z"  
"fBodyGyro-std()-X"  
"fBodyGyro-std()-Y"  
"fBodyGyro-std()-Z"  
"fBodyAccMag-mean()"  
"fBodyAccMag-std()"  
"fBodyBodyAccJerkMag-mean()"  
"fBodyBodyAccJerkMag-std()"  
"fBodyBodyGyroMag-mean()"  
"fBodyBodyGyroMag-std()"  
"fBodyBodyGyroJerkMag-mean()"  
"fBodyBodyGyroJerkMag-std()"  

