This is a course project from Get and Cleaning Data course.
The original data comes from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The script works following those steps:

1 - reads the train files

2 - puts the train files into one only data frame, selecting only the determined variables (accordingly to the assignment)

3 - reads the test files

4 - puts the test files into one data frame, selecting only the established variables (accordingly to the assignment)

5 - merges test and train data frames into only one data frame, called alldata

6 - rename the alldata data frame columns

7 - summarize the alldata data frame by **subject** and by **activity**, producing the mean results of the following original variables:

  7.1 - tBodyAcc-mean()-X
  
  7.2 - tBodyAcc-mean()-Y
  
  7.3 - tBodyAcc-mean()-Z
  
  7.4 - tBodyAcc-sd()-X
  
  7.5 - tBodyAcc-sd()-Y
  
  7.6 - tBodyAcc-sd()-Z

8 - Information about variables.
The following variables are found on the output file

8.1 - subject - describing the identification of the subject. It is a numeric variable ranging from 1 to 30

8.2 - activity - describing the correspondent activity. It is a numeric variable, ranging from 1 to 6

8.3 - meanx summarizing the mean of tBodyAcc-mean()-X for a particular subject and activity 

8.4 - meany summarizing the mean of tBodyAcc-mean()-Y for a particular subject and activity

8.5 - meanz summarizing the mean of tBodyAcc-mean()-X for a particular subject and activity

8.6 - meansdx summarizing the mean of tBodyAcc-sd()-X for a particular subject and activity

8.7 - meansdy summarizing the mean of tBodyAcc-sd()-X for a particular subject and activity

8.8 - meansdz summarizing the mean of tBodyAcc-sd()-X for a particular subject and activity

9 Summary choices 

The summary choices are done to comply with the assignment guidances

