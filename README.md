getting_data
============

Course Project of the coursera on-line course of getting data

This repository contains the  R script with a function that has to be called with the directory name where the files to be analyzed are located.

For example if the directory name is UCI_HAR_Dataset:

df <- run_analysis("UCI_HAR_Dataset")

The object df contains a new data.frame

colnames(df) (Activityandsubj contains the names of the rows corresponding to the subject and the activity)

[1] "Activityandsubj"                 "tBodyAcc.mean...X"               "tBodyAcc.mean...Y"              
 [4] "tBodyAcc.mean...Z"               "tGravityAcc.mean...X"            "tGravityAcc.mean...Y"           
 [7] "tGravityAcc.mean...Z"            "tBodyAccJerk.mean...X"           "tBodyAccJerk.mean...Y"          
[10] "tBodyAccJerk.mean...Z"           "tBodyGyro.mean...X"              "tBodyGyro.mean...Y"             
[13] "tBodyGyro.mean...Z"              "tBodyGyroJerk.mean...X"          "tBodyGyroJerk.mean...Y"         
[16] "tBodyGyroJerk.mean...Z"          "tBodyAccMag.mean.."              "tGravityAccMag.mean.."          
[19] "tBodyAccJerkMag.mean.."          "tBodyGyroMag.mean.."             "tBodyGyroJerkMag.mean.."        
[22] "fBodyAcc.mean...X"               "fBodyAcc.mean...Y"               "fBodyAcc.mean...Z"              
[25] "fBodyAcc.meanFreq...X"           "fBodyAcc.meanFreq...Y"           "fBodyAcc.meanFreq...Z"          
[28] "fBodyAccJerk.mean...X"           "fBodyAccJerk.mean...Y"           "fBodyAccJerk.mean...Z"          
[31] "fBodyAccJerk.meanFreq...X"       "fBodyAccJerk.meanFreq...Y"       "fBodyAccJerk.meanFreq...Z"      
[34] "fBodyGyro.mean...X"              "fBodyGyro.mean...Y"              "fBodyGyro.mean...Z"             
[37] "fBodyGyro.meanFreq...X"          "fBodyGyro.meanFreq...Y"          "fBodyGyro.meanFreq...Z"         
[40] "fBodyAccMag.mean.."              "fBodyAccMag.meanFreq.."          "fBodyBodyAccJerkMag.mean.."     
[43] "fBodyBodyAccJerkMag.meanFreq.."  "fBodyBodyGyroMag.mean.."         "fBodyBodyGyroMag.meanFreq.."    
[46] "fBodyBodyGyroJerkMag.mean.."     "fBodyBodyGyroJerkMag.meanFreq.." "tBodyAcc.std...X"               
[49] "tBodyAcc.std...Y"                "tBodyAcc.std...Z"                "tGravityAcc.std...X"            
[52] "tGravityAcc.std...Y"             "tGravityAcc.std...Z"             "tBodyAccJerk.std...X"           
[55] "tBodyAccJerk.std...Y"            "tBodyAccJerk.std...Z"            "tBodyGyro.std...X"              
[58] "tBodyGyro.std...Y"               "tBodyGyro.std...Z"               "tBodyGyroJerk.std...X"          
[61] "tBodyGyroJerk.std...Y"           "tBodyGyroJerk.std...Z"           "tBodyAccMag.std.."              
[64] "tGravityAccMag.std.."            "tBodyAccJerkMag.std.."           "tBodyGyroMag.std.."             
[67] "tBodyGyroJerkMag.std.."          "fBodyAcc.std...X"                "fBodyAcc.std...Y"               
[70] "fBodyAcc.std...Z"                "fBodyAccJerk.std...X"            "fBodyAccJerk.std...Y"           
[73] "fBodyAccJerk.std...Z"            "fBodyGyro.std...X"               "fBodyGyro.std...Y"              
[76] "fBodyGyro.std...Z"               "fBodyAccMag.std.."               "fBodyBodyAccJerkMag.std.."      
[79] "fBodyBodyGyroMag.std.."          "fBodyBodyGyroJerkMag.std.."
