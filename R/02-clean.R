library(tidyverse)
library(dplyr)
library(lubridate)

raw <- read_csv("data/raw/earthquakes.csv")

#make clean dataset

clean <- raw  %>%  select(time,mag)

save(clean, file = "data/clean R/clean.Rdata")
