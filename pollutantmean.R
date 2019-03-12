pollutantmean <- function(directory, pollutant, id = 1:332) {
  fileList <- list.files(path = "C:/Users/c00335/Desktop/rprog_data_specdata/specdata", pattern = ".csv", full.names = TRUE)
  values <- numeric()
  
  for (i in id) {
    data <- read.csv(fileList[i])
    values <- c(values, data[[pollutant]]
  }
  mean(values, na.rm = TRUE)
}

pollutantmean("C:/Users/c00335/Desktop/rprog_data_specdata/specdata", "sulfate")
