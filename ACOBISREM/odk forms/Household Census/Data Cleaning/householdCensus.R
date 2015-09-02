data <- read.csv("C:/Users/Tee/Downloads/acobisrem.csv", stringsAsFactors = FALSE)
duplicates <- as.data.frame(data$hhId[duplicated(data$hhId)],stringsAsFactors = FALSE)
names(duplicates) <- "hhId"

dupes <- subset(data, data$hhId %in% duplicates$hhId)

dupes <- dupes[order(dupes$hhId),]

write.csv(dupes,"C:\\Users\\Tee\\IHI Projects\\ACOBISREM\\odk forms\\Household Census\\Data Cleaning\\duplicates.csv",row.names = FALSE)
