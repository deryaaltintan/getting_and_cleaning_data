
#Part 1:Merges the training and the test sets to create one data set.
#combine data sets and create a matrix Data whose columns are the test and train sets
test_data <- read.table("test/X_test.txt")
train_data <- read.table("train/X_train.txt")
Data<-rbind(test_data,train_data)




#combine labels  and create a matrix Label whose columns are the test and train labels
test_label<-read.table("test/y_test.txt")
train_label <- read.table("train/y_train.txt")
Label <- rbind(test_label, train_label)



## Read subjects and combine them at matrix Subject 
test_subject<- read.table("test/subject_test.txt")
train_subject<- read.table("train/subject_train.txt")
Subject <- rbind(test_subject, train_subject)



#read future list
List_features <- read.table("features.txt")
Feature<-List_features$V2

## Logical Vector to keep only std and mean columns
keepRows <- grepl("(std|mean)",Feature)

## Keep only data we want, and name it human readable
Data <- Data[,keepRows]
names(Data) <- Feature[keepRows]
names(Data) <- gsub("\\(|\\)", "", names(Data))
names(Data) <- toupper(names(Data))

## Read ActivityList (to add descriptive names to data set)
Activities <- read.table("activity_labels.txt")
Label[1,] = Activities[Label[1,], 2]
names(Label) <- "ACTIVITY" ## Add activity label


## Add human readable labels to activity names
names(Subject) <- "SUBJECT"
Tidy_Data1 <- cbind(Subject, Label, Data)
write.table(Tidy_Data1, "Tidy_Data1.txt",row.name = FALSE)

## Create second tiny data set with avg of each var for each act and each sub
nC = length(names(Tidy_Data1))
Tidy_Data2 = Tidy_Data1[1:(length(unique(Subject)[,1])*length(Activities[,1])), ]
counter = 1
for (i in 1:length(unique(Subject)[,1])) {
  for (j in 1:length(Activities[,1])) {
    Tidy_Data2[counter,1] = unique(Subject)[i,1]
    Tidy_Data2[counter,2] = Activities[j, 2]
    Tidy_set <- Tidy_Data1[Tidy_Data1$SUBJECT==i & Tidy_Data1$ACTIVITY==Activities[j,2],]
    Tidy_Data2[counter, 3:nC] <- colMeans(Tidy_set[, 3:nC])
    counter = counter + 1
  }
}
write.table(Tidy_Data2, "Tidy_Data2.txt",row.name = FALSE)
