library(knitr)
knitr::opts_chunk$set(echo = FALSE)
knitr::opts_chunk$set(message = FALSE)
opts_chunk$set(comment="", fig.align="center", tidy=TRUE , cache=TRUE)
library(tidyverse)
library(lattice)
library(data.table)
library(GGally)
library(kableExtra)


cars <- read_csv("C:/Data/newcars.csv")



write.csv(cars,"New_cars.csv",row.names=FALSE)

ggplot(cars, aes(x = AnnualFuelCost , y = as.factor(Fuel), col = as.factor(Gearbox) )) + geom_point() + labs(title = "New cars: Fuel efficiency")

ggsave("matrixPlot.png", width = 6, height = 6)
