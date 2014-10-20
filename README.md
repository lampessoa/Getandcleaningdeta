This is a course project from Get and Cleaning Data course.
The original data comes from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The script works following those steps
1 - reads the train files
2 - puts the train files into one only data frame, selecting only the determined variables (accordingly to the assignment)
3 - reads the test files
4 - puts the test files into one data frame, selecting only the established variables (accordingly to the assignment)
5 - merges test and train data frames into only one data frame, called alldata
6 - rename the alldata data frame columns
7 - summarize the alldata data frame by **subject* and by *activity*, producing the mean results of the following variables:
7.1 - tBodyAcc-mean()-X
7.2 - tBodyAcc-mean()-Y
7.3 - tBodyAcc-mean()-Z
7.4 - tBodyAcc-sd()-X
7.5 - tBodyAcc-sd()-Y
7.6 - tBodyAcc-sd()-Z

For more information please see the code book
