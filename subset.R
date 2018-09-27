
str(dfInput)
sortOrder <- order(dfInput$Ozone)
sort <- dfInput[sortOrder,]
df <- sort[10,]
str(df)
