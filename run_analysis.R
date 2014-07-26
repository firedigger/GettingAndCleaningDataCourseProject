train <- read.table("train/X_train.txt")
trainy <- read.table("train/y_train.txt")
test <- read.table("test/X_test.txt")
testy <- read.table("test/y_test.txt")
fulldata <- rbind(train,test)
rm(train)
rm(test)
fulldatay <- rbind(trainy,testy)
rm(trainy)
rm(testy)
features <- read.table("features.txt")
subfeatures <- features[grep(pattern="mean\\(\\)|std\\(\\)",x=features$V2),]
fulldata <- fulldata[,subfeatures[[1]]]

labels <- read.table("activity_labels.txt")
f <- function(x) 
{
  return (labels[x,2])
}
fulldata$activity <- sapply(fulldatay[[1]],f)

TransformColName <- function(x)
{
  c <- x
  c <- sub("^t","Time.",c)
  c <- sub("^f","Frequency.",c)
  c <- sub("Acc","Accelerometer.",c)
  c <- sub("-mean\\(\\)","mean",c)
  c <- sub("-std\\(\\)","std",c)
  c <- sub("Gyro","Gyroscope.",c)
  c <- sub("Jerk","Jerk.",c)
  c <- sub("Mag","Magnitude.",c)
  
  return (c)
}


for(i in 1:(dim(fulldata)[2]-1))
{
  a <- names(fulldata)[i]
  b <- as.integer(substr(a,2,nchar(a)))
  c <- as.character(features[b,2])
  
  c <- TransformColName(c)
  
  names(fulldata)[i] <- c
}
subjects_train <- read.table("train/subject_train.txt")
subjects_test <- read.table("test/subject_test.txt")
fullsubjects <- rbind(subjects_train,subjects_test)
rm(subjects_train)
rm(subjects_test)

newframe <- append(1,c("a",fulldata[1,1:dim(fulldata)[2]-1]))
for(act in 1:5)
{
  for(subj in 1:30)
  {
    newrow <- c(subj,as.character(labels[act,2]))
    for(i in 1:(dim(fulldata)[2]-1))
    {
      newrow <- append(newrow,mean(fulldata[fullsubjects$V1 == subj & fulldatay$V1 == act,i]))
    }
    newframe <- rbind(newframe,newrow)
  }
}
newframe <- newframe[-1,]
row.names(newframe) <- NULL
colnames(newframe)[1] <- "Subject#"
colnames(newframe)[2] <- "Activity"
write.csv(x = newframe, file = "SamsungDataVariableMeans.csv")
