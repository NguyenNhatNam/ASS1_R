
pollutantmean <- function(directory, pollutant, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files

        ## 'pollutant' is a character vector of length 1 indicating
        ## the name of the pollutant for which we will calculate the
        ## mean; either "sulfate" or "nitrate".

        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used

        ## Return the mean of the pollutant across all monitors list
        ## in the 'id' vector (ignoring NA values)
        filenames <-NULL
        n <-length(id)
        data list(n)
        
        for(i in id)
        {
                if(i<10)
                {
                        
                        filenames <-paste("00", i,".csv", sep="")
                        
                }
                else if
                {
                        filenames <-paste("0", i,".csv", sep="")
                }
                else
                {
                        filenames <-paste(i,".csv", sep="")
                }
                
                data[i] <-read.csv("specdata/"filenames)
                
        }
        
        
}