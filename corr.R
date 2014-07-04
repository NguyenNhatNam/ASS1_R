corr <- function(directory, threshold = 0) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files

        ## 'threshold' is a numeric vector of length 1 indicating the
        ## number of completely observed observations (on all
        ## variables) required to compute the correlation between
        ## nitrate and sulfate; the default is 0

        ## Return a numeric vector of correlations
        
        
        ## names of files
        f <-list.files(directory)
        ## List of data
        data <-list(length(f))
        ##vector result
        corr <-c()
        
        j <-1
        
        for(i in 1:length(f))
        {
                ##Read file into data[[i]]
                data[[i]] <-read.csv(paste(directory,"/",f[i],sep=""))
                ##Remove NA 
                y <-data[[i]][complete.cases(data[[i]][, 1:ncol(data[[i]])]), ]
                ## OR using na.omit
                ## Cal cor if oserver > threshold
                if(nrow(y) > threshold ) 
                {
                        corr[j] <-(cor(y["sulfate"], y["nitrate"]))
                        j <-j + 1
                }
        }
        
        ##return corr vector
        corr
        
        
}