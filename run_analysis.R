run_analysis <- function(directoryname){
        
        ##Load the data of testing
        wd <- getwd()
        tab1 <- paste(wd, "/", directoryname, "/test/subject_test.txt", sep="")
        tab2 <- paste(wd, "/", directoryname, "/test/X_test.txt", sep="")
        tab3 <- paste(wd, "/", directoryname, "/test/y_test.txt", sep="")
        tab4 <- paste(wd, "/", directoryname, "/features.txt", sep="")
        
        #load the data
        subject_test <- read.table(tab1)
        table_test <- read.table(tab2)
        var <- read.table(tab3)
        atr <- read.table(tab4)
        
        ##Locate descriptive column names and filter the column names that wear mean() and std()
        names(table_test) <- atr$V2
        new <- table_test[, c(grep("mean()", colnames(table_test)), grep("std()", colnames(table_test)))]
        
        ## Convert the values in the table var in a comprehensible language following a dictionary
        map = setNames(c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"), c("1", "2", "3", "4", "5", "6"))
        var[] <- map[unlist(var)]
        
        ##Change the name of the columns activity and person
        names(var) <- "Activity"
        names(subject_test) <- "Subject"
        
        ##Load the data of train
        
        tab1 <- paste(wd, "/", directoryname, "/train/subject_train.txt", sep="")
        tab2 <- paste(wd, "/", directoryname, "/train/X_train.txt", sep="")
        tab3 <- paste(wd, "/", directoryname, "/train/y_train.txt", sep="")
        
        #load the data
        subject_test_train <- read.table(tab1)
        table_test_train <- read.table(tab2)
        var_train <- read.table(tab3)
        
        ##Locate descriptive column names and filter the column names that wear mean() and std()
        names(table_test_train) <- atr$V2
        new_train <- table_test_train[, c(grep("mean()", colnames(table_test_train)), grep("std()", colnames(table_test_train)))]
        
        ## Convert the values in the table var in a comprehensible language following a dictionary
        map = setNames(c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"), c("1", "2", "3", "4", "5", "6"))
        var_train[] <- map[unlist(var_train)]
        
        ##Change the name of the columns activity and person
        names(var_train) <- "Activity"
        names(subject_test_train) <- "Subject"

        # Build the data.frame
        merged <- rbind(cbind(var, subject_test, new), cbind(var_train, subject_test_train, new_train))
        
        #Build the average data.frame. First splitting the original table to calculate the mean by person and activity
        #After rebuilding the data.frame
        s <- split(merged, list(merged$Activity, merged$Subject))
        
        ## The mean is calculated, however the column 1 and 2 are eliminated in the calculations because they hold the subject and
        ##the activity
        mean_list <- lapply(s, function(x) colMeans(x[, -c(1,2)]))
        
        ##Here the data.frame is created using the list "mean_list", the rownames will be the names of the list index.
        df <- data.frame(t(sapply(mean_list,c)))
        
        ## It is necessary to include a row with the rownames 
        df$Activityandsubj <- rownames(df)
        df <- df[,c(80,1:79)]
        
}
