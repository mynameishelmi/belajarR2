#import library

library(readr)
library(dplyr)
library(here)
library(janitor)
library(ggplot2)

#load data
data.path <- here("data", "IndonesianMammalVertNet.csv")
data.path

#load csv file
data.df <- read_csv(data.path)|>
  clean_names()

colnames(data.df)


#Clean coll names
cleanData.df <- clean_names(data.df)

colnames(cleanData.df)


#select columns
newData.df <- select(cleanData.df,order, genus, specificepithet, total_length, elevation_meters)

#create plot
plot1 <- ggplot(newData.df, aes(x = order, y = total_length)) + 
  geom_point()+
  theme_classic()+
  labs(x = "Order", y = "Total Length")

ggsave(here("figures","plot1.png"), height = 5, width = 7)



## ada data pipes##
#import library

library(readr)
library(dplyr)
library(here)
library(janitor)
library(ggplot2)

colls <- c("order", "genus", "specificepithet", "total_length", "elevation_meters")

#load data
data.path <- here("data", "IndonesianMammalVertNet.csv")
data.path

#load csv file
read_csv(data.path)|>
  clean_names() |> #clean coll name first
  select(colls) |> # select only desired coloumn
  ggplot(aes(x = order, y = total_length)) + #plot result
  geom_point()+
  theme_classic()+
  labs(x = "Order", y = "Total Length")

ggsave(here("figes","plot1.png"), height = 5, width = 7)

  

