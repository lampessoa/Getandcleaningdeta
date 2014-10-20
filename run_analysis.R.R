library("plyr")

#reading train files
features <- read.table("C:/Users/Administrador/Desktop/Coursera/UCI HAR Dataset/features.txt", quote="\"")
y_train <- read.table("C:/Users/Administrador/Desktop/Coursera/UCI HAR Dataset/train/y_train.txt", quote="\"")
X_train <- read.table("C:/Users/Administrador/Desktop/Coursera/UCI HAR Dataset/train/X_train.txt", quote="\"")
subject_train <- read.table("C:/Users/Administrador/Desktop/Coursera/UCI HAR Dataset/train/subject_train.txt", quote="\"")

#merging train files
train<-cbind(X_train[1:6],y_train)
train<-cbind(train,subject_train)
#reading test files
y_test <- read.table("C:/Users/Administrador/Desktop/Coursera/UCI HAR Dataset/test/y_test.txt", quote="\"")
X_test <- read.table("C:/Users/Administrador/Desktop/Coursera/UCI HAR Dataset/test/X_test.txt", quote="\"")
subject_test <- read.table("C:/Users/Administrador/Desktop/Coursera/UCI HAR Dataset/test/subject_test.txt", quote="\"")

#merging test files
test<-cbind(X_test[1:6],y_test)
test<-cbind(test,subject_test)

#merging all
alldata<-rbind(test,train)

#renaming columns 
for (i in 1:6){
colnames(alldata)[i]<-as.character(features[i,2])
}# this one is ineffective because I had to rename the columns again.
# just kept in order to show that it could be done in an autometed way

colnames(alldata)[7]<-"activity"
colnames(alldata)[8]<-"subject"


#had to change columns name (I had some problems with the original one)
colnames(alldata)[1]<-"tbodymeanx"
colnames(alldata)[2]<-"tbodymeany"
colnames(alldata)[3]<-"tbodymeanz"
colnames(alldata)[4]<-"tbodysdx"
colnames(alldata)[5]<-"tbodysdy"
colnames(alldata)[6]<-"tbodysdz"
#this link was helpful http://stats.stackexchange.com/questions/8225/how-to-summarize-data-by-group-in-r
otherdata <- ddply(alldata,~subject~activity,summarize, meanx = mean(tbodymeanx), meany=mean(tbodymeany), meanz=mean(tbodymeanz), meansdx=mean(tbodysdx), meansdy=mean(tbodysdy), meansdz=mean(tbodysdz))
head(otherdata)
write.table (otherdata, "getcldata.txt",row.name=FALSE)
