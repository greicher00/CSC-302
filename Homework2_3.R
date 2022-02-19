my_data <- read.csv(file = "~/r_data/metabolite.csv", stringsAsFactors = FALSE)

count(my_data, "Alzheimers")
sapply(my_data, function(x) sum(is.na(x)))

new_data=my_data[!is.na(my_data$Dopamine),]
new_data <- replace(new_data, new_data[is.na(new_data$c4.OH.Pro),],median())