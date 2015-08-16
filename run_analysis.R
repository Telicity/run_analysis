run_analysis <- function() {
        ##Load files - assignment specifications expect this to be already done before running this function
        ##fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        ##download(url, dest="dataset.zip", mode="wb") 
        ##unzip("dataset.zip")
        
        ##read all the necessary data in 
        activity_labels<-read.table("./UCI\ HAR\ Dataset/activity_labels.txt")
        features<-read.table("./UCI\ HAR\ Dataset/features.txt")
        
        subject_train<-read.table("./UCI\ HAR\ Dataset/train/subject_train.txt")
        X_train<-read.table("./UCI\ HAR\ Dataset/train/X_train.txt")
        Y_train<-read.table("./UCI\ HAR\ Dataset/train/Y_train.txt")
        
        subject_test<-read.table("./UCI\ HAR\ Dataset/test/subject_test.txt")
        X_test<-read.table("./UCI\ HAR\ Dataset/test/X_test.txt")
        Y_test<-read.table("./UCI\ HAR\ Dataset/test/Y_test.txt")
        
        #1. Merges the training and the test sets to create one data set of each type
        subject<-rbind(subject_train, subject_test)
        X<-rbind(X_train, X_test)
        Y<-rbind(Y_train, Y_test)
        
        #2. Extracts only the measurements on the mean and standard deviation for each measurement. 
        msFeatures <- which(sapply(features[,2],function(x){grepl("mean\\(\\)|std\\(\\)",x)}))
        
        ##all data we're going to need together
        exsXY<-cbind(subject,Y,X[,msFeatures])
        
        ##labels
        names(exsXY)=c("Subject","ActivityNo",as.character(features[msFeatures,2]))
        
        ##average by subject & activity
        saAvg<-aggregate(exsXY,list(exsXY$Subject,exsXY$ActivityNo),mean)
        
        ##add descriptive activity names
        names(activity_labels)<-c("ActivityNo","Activities")
        saAvg<-join(activity_labels,saAvg,by="ActivityNo",type="inner")
        
        ##remove untidy columns
        drops<-c("ActivityNo","Group.1","Group.2")
        saAvg<-saAvg[,!names(saAvg) %in% drops]
        
        ##write table
        write.table(saAvg,"saAvg.txt",row.name=FALSE)
}