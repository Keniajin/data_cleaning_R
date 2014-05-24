Human Activity Recognition Using Smartphones Data Set
-----------------------------------------------------------------------
The dataset is from a Human Activity Recognition database built from the recordings of 30  different volunteers,between 19-48years performing activities of daily living (ADL).They performed the activities while carrying a waist-mounted Samsung Galaxy S II smartphone with embedded inertial sensors. The ADL were 
    1 WALKING
    2	WALKING_UPSTAIRS
    3	WALKING_DOWNSTAIRS
    4	SITTING
    5	STANDING
    6	LAYING
The  dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
---------------------------------------------------------------------
The dataset included the following files:

- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
The following files were available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

-----------------------------------------------------------------------
Objectives
---------------------------------------------------------------------
*The first aim of this process was to merge the training and the test sets to create one complete data set. Secondly it involved to extract 
only the measurements of the mean and standard devaiton for each and every measurement was done. Thirdly, I added the labels on the different activities that were used to get the measurements. Finaly I created a data set to calculate the average of the extracted variables in the second aim.

------------------------------------------------------------------------
Cleaning Process
---------------------------------------------------------------------
A merging/append process to ensure a tidy dataset is created was carried out. The process involved merging the training and test data, including the activity names and the variable names of the variables
The final dataset includes the following
- 'README.md' 
- 'UCI HAR Dataset/': holds the raw data from the online repository.
- 'datasets/average_humanActivityData.txt': average of each variable for each activity and each subject.
- 'datasets/tidy_humanActivityData.txt': The tidy data with the measurements on the mean and standard deviation for each measurement.
----------------------------------------------------------------------------------------------------------
The descriptions of the variables in the tidy dataset(tidy_humanActivityData.txt) are the mean and standard deviation of
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- Its activity label. 
----------------------------------------------------------------------------------------------------------
The description of the variables in the average dataset(average_humanActivityData.txt) is the average of each activity (Activity-variable) per Triaxial accelaration and triaxial angular velocity for the mean and standard deviation.

