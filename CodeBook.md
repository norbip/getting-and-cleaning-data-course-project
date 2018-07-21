# CodeBook

This code book describes the cleaned data in `data_tidy.txt`.

The meaining of the individual data fields and the measurement process is available at [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The cleaned data set contains the average of each data measurement per activity, per subject.

## Subject and Activity

The key identifying fields of the tidied data set are the following:

* `subject` - Numeric ID of the subject, integer value from 1 to 30.
* `activity` - Identifier of an activity, string, with the following values:
	* `WALKING`
	* `WALKING_UPSTAIRS`
	* `WALKING_DOWNSTAIRS`
	* `SITTING`
	* `STANDING`
	* `LAYING`

## Measurements

Out of the source data set the mean and standard deviation fields are considered. The list of measurements are the following:

 * `tbodyacc-mean-x`
 * `tbodyacc-mean-y`
 * `tbodyacc-mean-z`
 * `tbodyacc-std-x`
 * `tbodyacc-std-y`
 * `tbodyacc-std-z`
 * `tgravityacc-mean-x`
 * `tgravityacc-mean-y`
 * `tgravityacc-mean-z`
 * `tgravityacc-std-x`
 * `tgravityacc-std-y`
 * `tgravityacc-std-z`
 * `tbodyaccjerk-mean-x`
 * `tbodyaccjerk-mean-y`
 * `tbodyaccjerk-mean-z`
 * `tbodyaccjerk-std-x`
 * `tbodyaccjerk-std-y`
 * `tbodyaccjerk-std-z`
 * `tbodygyro-mean-x`
 * `tbodygyro-mean-y`
 * `tbodygyro-mean-z`
 * `tbodygyro-std-x`
 * `tbodygyro-std-y`
 * `tbodygyro-std-z`
 * `tbodygyrojerk-mean-x`
 * `tbodygyrojerk-mean-y`
 * `tbodygyrojerk-mean-z`
 * `tbodygyrojerk-std-x`
 * `tbodygyrojerk-std-y`
 * `tbodygyrojerk-std-z`
 * `tbodyaccmag-mean`
 * `tbodyaccmag-std`
 * `tgravityaccmag-mean`
 * `tgravityaccmag-std`
 * `tbodyaccjerkmag-mean`
 * `tbodyaccjerkmag-std`
 * `tbodygyromag-mean`
 * `tbodygyromag-std`
 * `tbodygyrojerkmag-mean`
 * `tbodygyrojerkmag-std`
 * `fbodyacc-mean-x`
 * `fbodyacc-mean-y`
 * `fbodyacc-mean-z`
 * `fbodyacc-std-x`
 * `fbodyacc-std-y`
 * `fbodyacc-std-z`
 * `fbodyacc-meanfreq-x`
 * `fbodyacc-meanfreq-y`
 * `fbodyacc-meanfreq-z`
 * `fbodyaccjerk-mean-x`
 * `fbodyaccjerk-mean-y`
 * `fbodyaccjerk-mean-z`
 * `fbodyaccjerk-std-x`
 * `fbodyaccjerk-std-y`
 * `fbodyaccjerk-std-z`
 * `fbodyaccjerk-meanfreq-x`
 * `fbodyaccjerk-meanfreq-y`
 * `fbodyaccjerk-meanfreq-z`
 * `fbodygyro-mean-x`
 * `fbodygyro-mean-y`
 * `fbodygyro-mean-z`
 * `fbodygyro-std-x`
 * `fbodygyro-std-y`
 * `fbodygyro-std-z`
 * `fbodygyro-meanfreq-x`
 * `fbodygyro-meanfreq-y`
 * `fbodygyro-meanfreq-z`
 * `fbodyaccmag-mean`
 * `fbodyaccmag-std`
 * `fbodyaccmag-meanfreq`
 * `fbodybodyaccjerkmag-mean`
 * `fbodybodyaccjerkmag-std`
 * `fbodybodyaccjerkmag-meanfreq`
 * `fbodybodygyromag-mean`
 * `fbodybodygyromag-std`
 * `fbodybodygyromag-meanfreq`
 * `fbodybodygyrojerkmag-mean`
 * `fbodybodygyrojerkmag-std`
 * `fbodybodygyrojerkmag-meanfreq`

## Transformations

The raw data set contains individual measurements for a test and train data set. To get the tidied data set the following transformations were applied:

1. Train and test data sets were merged into a single data set.
2. Measurements containing mean and standard deviation were kept, the rest is discarded.
3. The numerical activity identifiers (1..6) are replaced by their string representation.
4. Column names are all lower case with hypen as the only special character.
5. As the final step average values are calculated for each activity and subject.