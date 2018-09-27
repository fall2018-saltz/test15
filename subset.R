
str(dfInput)
sortOrder <- order(dfInput$Ozone)
sort <- df[sortOrder,]
df <- sort[10,]
str(df)
