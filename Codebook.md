## Code Book for Course Project

### Overview

[Source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) of the original data:
  
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

[Full Description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) at the site where the data was obtained:
  
  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
  
###Process

The file 'run_analysis.R' creates two different data sets by using the following steps:

1. Read "X_test.txt" and 
"X_train.txt" data sets and combine them to create one data set named "Data".
2.  Read "y_test.txt" and 
"y_train.txt" data sets and combine them to create one data set named "Label".

3. Read "subject_test.txt" and 
"subject_train.txt" data sets and combine them to create one data set named "Subject".
2. Reads `features.txt` and uses only the measurements on the mean and standard
deviation for each measurement. 

3. Rename the data sets such that nmes are converted to upper case and brackets are removed. 
4. Combine "Data", "Label" and "Subject" and save them at data set named "Tidy_Data1".
5 .Write it to "Tidy_Data1.txt".

6. The average of each measurement for each activity and each subject is merged
to a second data set. The result is saved as "Tidy_Data2.txt".


## Variables
- test_data:
  table contents of `test/X_test.txt`
- train_data:
table contents of `train/X_train.txt`
- Data: Measurement data. Combined data set of the two above variables. Human readable.
- test_subject: 
table contents of `test/subject_test.txt`
- train_subject:
 table contents of `test/subject_train.txt`
-  Subject: Combined data set of the two above variables
- test_label: 
table contents of `test/y_test.txt`
- train_abel: 
table contents of `train/y_train.txt`
- Label - Data Labels. Combined data set of the two above variables. 
- List_features - table contents of `features.txt`
- Feature - Names of for data columns derived from featuresList
- keepColumns - logical vector of which features to use in tidy data set
- Activities - table contents of `activity_labels.txt`.
- Tidy_Data1 - Combined tidy data of data sets "Data", "Subject", "Label".
- nC - number of columns in Tidy_Data1
- Tidy_Data2 - second tiny data set with average of each variable for each activity and
subject
### Output

#### tidyData.txt

`tidyData.txt` is a data frame.

- The first column contains subject IDs.
- The second column contains activity names.


#### tidyData2.txt

`tidyData2.txt` is a  data frame.

- The first column contains subject IDs.
- The second column contains activity names.
- The averages for each of the 66 attributes are in columns 3-68.



