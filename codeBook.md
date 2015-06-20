==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

The names of all the variables in the output file are listed below:

"ActivityID"                                                    "ActivityName"                                                 
"SubjectID"                                                     "Time Body Accelaration meanX"                                 
"Time Body Accelaration meanY"                                  "Time Body Accelaration meanZ"                                 
"Time Body Accelaration Standard DeviationX"                    "Time Body Accelaration Standard DeviationY"                   
"Time Body Accelaration Standard DeviationZ"                    "Time Gravity Accelaration meanX"                              
"Time Gravity Accelaration meanY"                               "Time Gravity Accelaration meanZ"                              
"Time Gravity Accelaration Standard DeviationX"                 "Time Gravity Accelaration Standard DeviationY"                
"Time Gravity Accelaration Standard DeviationZ"                 "Time Body Accelaration JerkmeanX"                             
"Time Body Accelaration JerkmeanY"                              "Time Body Accelaration JerkmeanZ"                             
"Time Body Accelaration JerkStandard DeviationX"                "Time Body Accelaration JerkStandard DeviationY"               
"Time Body Accelaration JerkStandard DeviationZ"                "Time Body Gyroscopescope meanX"                               
"Time Body Gyroscopescope meanY"                                "Time Body Gyroscopescope meanZ"                               
"Time Body Gyroscopescope Standard DeviationX"                  "Time Body Gyroscopescope Standard DeviationY"                 
"Time Body Gyroscopescope Standard DeviationZ"                  "Time Body Gyroscopescope JerkmeanX"                           
"Time Body Gyroscopescope JerkmeanY"                            "Time Body Gyroscopescope JerkmeanZ"                           
"Time Body Gyroscopescope JerkStandard DeviationX"              "Time Body Gyroscopescope JerkStandard DeviationY"             
"Time Body Gyroscopescope JerkStandard DeviationZ"              "Time Body Accelaration Magnitudemean"                         
"Time Body Accelaration MagnitudeStandard Deviation"            "Time Gravity Accelaration Magnitudemean"                      
"Time Gravity Accelaration MagnitudeStandard Deviation"         "Time Body Accelaration JerkMagnitudemean"                     
"Time Body Accelaration JerkMagnitudeStandard Deviation"        "Time Body Gyroscopescope Magnitudemean"                       
"Time Body Gyroscopescope MagnitudeStandard Deviation"          "Time Body Gyroscopescope JerkMagnitudemean"                   
"Time Body Gyroscopescope JerkMagnitudeStandard Deviation"      "Frequency Body Accelaration meanX"                            
"Frequency Body Accelaration meanY"                             "Frequency Body Accelaration meanZ"                            
"Frequency Body Accelaration Standard DeviationX"               "Frequency Body Accelaration Standard DeviationY"              
"Frequency Body Accelaration Standard DeviationZ"               "Frequency Body Accelaration meanFreqX"                        
"Frequency Body Accelaration meanFreqY"                         "Frequency Body Accelaration meanFreqZ"                        
"Frequency Body Accelaration JerkmeanX"                         "Frequency Body Accelaration JerkmeanY"                        
"Frequency Body Accelaration JerkmeanZ"                         "Frequency Body Accelaration JerkStandard DeviationX"          
"Frequency Body Accelaration JerkStandard DeviationY"           "Frequency Body Accelaration JerkStandard DeviationZ"          
"Frequency Body Accelaration JerkmeanFreqX"                     "Frequency Body Accelaration JerkmeanFreqY"                    
"Frequency Body Accelaration JerkmeanFreqZ"                     "Frequency Body Gyroscopescope meanX"                          
"Frequency Body Gyroscopescope meanY"                           "Frequency Body Gyroscopescope meanZ"                          
"Frequency Body Gyroscopescope Standard DeviationX"             "Frequency Body Gyroscopescope Standard DeviationY"            
"Frequency Body Gyroscopescope Standard DeviationZ"             "Frequency Body Gyroscopescope meanFreqX"                      
"Frequency Body Gyroscopescope meanFreqY"                       "Frequency Body Gyroscopescope meanFreqZ"                      
"Frequency Body Accelaration Magnitudemean"                     "Frequency Body Accelaration MagnitudeStandard Deviation"      
"Frequency Body Accelaration MagnitudemeanFreq"                 "Frequency Body Accelaration JerkMagnitudemean"                
"Frequency Body Accelaration JerkMagnitudeStandard Deviation"   "Frequency Body Accelaration JerkMagnitudemeanFreq"            
"Frequency Body Gyroscopescope Magnitudemean"                   "Frequency Body Gyroscopescope MagnitudeStandard Deviation"    
"Frequency Body Gyroscopescope MagnitudemeanFreq"               "Frequency Body Gyroscopescope JerkMagnitudemean"              
"Frequency Body Gyroscopescope JerkMagnitudeStandard Deviation" "Frequency Body Gyroscopescope JerkMagnitudemeanFreq"          
"angleTime Body Accelaration Meangravity"                       "angleTime Body Accelaration JerkMeangravityMean"              
"angleTime Body Gyroscopescope MeangravityMean"                 "angleTime Body Gyroscopescope JerkMeangravityMean"            
"angleXgravityMean"                                             "angleYgravityMean"                                            
"angleZgravityMean"   

Activity Labels:
 
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING
