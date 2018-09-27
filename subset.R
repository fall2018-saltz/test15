
sortOrder <- order(df$Ozone)
sort <- df[sortOrder,]
df <- sort[10,]
str(df)
