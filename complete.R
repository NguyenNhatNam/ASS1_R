complete <- function(directory, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files

        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        ## Return a data frame of the form:
        ## id nobs
        ## 1  117
        ## 2  1041
        ## ...
        ## where 'id' is the monitor ID number and 'nobs' is the
        ## number of complete cases
        
        ## List of data
        data <-list(length(id))
        ## names of files
        f <-list.files(directory)
        
        nobs <-c()
        
        
        for(i in 1:length(id))
        {
                ##Read file into data[[i]]
               data[[i]] <-read.csv(paste(directory,"/",f[i],sep=""))
               ##Remove NA 
               y <-data[[i]][complete.cases(data[[i]][, 1:ncol(data[[i]])]), ]
               ## OR using na.omit
               ##Number of completely observed cases in each data file
               nobs[i] <-nrow(y) 
        }

        
        id <-c(1:length(id))
        ##Create data frame result
        result <-data.frame(id, nobs)
             
        
}