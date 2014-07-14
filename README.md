getdata
=======

[Getting and Cleaning Data](https://www.coursera.org/course/getdata) Assignment.

The script run_analysis.R should be run in the data containing the unzipped 
[UCI HAR Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). 

It performs the following steps:
- reads subject information, feature data and labels from the test and
train subdirectories
- combines testing and training observations into features, labels and subjects
- reads the names of the features and adds them to the feature data frame
- reads the names of the activity labels and substitutes them for the numeric
labels
- selects only those features named mean() and std()
- cleans up the feature names a bit
- constructs a new data frame comprising subject, desired features and labels
- summarises this new data frame by averaging the features per subject per
activity
- writes the summary data frame to a file.

See Codebook.md for a description of the summary file produced.
