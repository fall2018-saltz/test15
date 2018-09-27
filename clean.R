
#clean_data <- raw_data

sum(is.na(raw_data))
clean_data <- na.omit(raw_data)
sum(is.na(clean_data))
#clean_data[1:10,]
str(clean_data)
