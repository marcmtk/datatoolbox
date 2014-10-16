pollutantmean <- function(directory, pollutant, id = 1:332) {
  id <- formatC(id, width = 3, format = "d", flag = "0")
  dfs <- lapply(id, function(x) read.csv(paste(directory,"/",x,".csv", sep=""), header=T))
  df <- do.call("rbind", dfs)
  colMeans(df[pollutant], na.rm=T)
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
}

#pollutantmean(directory, "nitrate")              #1.702932
#pollutantmean(directory, "nitrate", 23)          #1.280833
#pollutantmean(directory, "nitrate", 70:72)       #1.706047
#pollutantmean(directory, "sulfate", 1:10)        #4.064128
