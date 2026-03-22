library(tidyverse)
library(dplyr)
library(lubridate)

raw <- read_csv("data/raw/earthquakes.csv")

#make clean dataset

clean <- raw  %>%  select(time,mag)

dir.create("data/clean", recursive = TRUE, showWarnings = FALSE)

save(clean, file = "data/clean/clean.Rdata")
