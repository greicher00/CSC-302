my_data <- read.csv(file = "~/r_data/WorldCupMatches.csv", stringsAsFactors = FALSE)

dim(my_data)
summary(my_data)
unique(my_data$City)
aggregate(my_data$Home.Team.Goals, by=list(my_data$Home.Team.Name), FUN=sum)
aggregate(my_data$Attendance, by=list(my_data$Year), FUN=mean)