
setwd("//ad.u-ga.fr/home/c/coulangs/Recherche_Memoire/SelfStats/cours-master")
getwd()

.libPaths('C:/R')



data <- read.csv("self_export-test_299-session390-29-06-2018_14_52_37.csv", sep = ";", encoding = "UTF-8")

# récupère le temps total de passation pour tous les étudiants
temps <- c(data[1],data[2],data[6])
write.csv(temps, file = "temps.csv")

# récupère le temps par tâche pour tous les étudiants
library(dplyr)
tpt <- c(data[1],data[2],data[8],select(data, ends_with("TEMPS")))
write.csv(tpt, file = "tpt.csv")
