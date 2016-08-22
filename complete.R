complete <- function(directory, id = 1:332) {
	files <- list.files(directory, full.names=TRUE)
	dataframe <- data.frame()

	for(i in id) {
		#loops through the files, rbinding them together 
		each <- read.csv(files[i])
		
	
	nobs <- sum(complete.cases(each))
	dataframe_i <- data.frame(i, nobs)
	dataframe <- rbind(dataframe, dataframe_i)
	}

colnames(dataframe) <- c("id", "nobs")
dataframe 
	
	
}