#### Preamble ####
# Purpose: Simulates data
# Author: Aviral Bhardwaj
# Date: 19 September 2024
# Contact: aviral.bhardwaj@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)
library(here)


#### Simulate data ####
set.seed(407)

# Define the start and end date
start_date <- as.Date("2019-01-01")
end_date <- as.Date("2024-12-31")

# Set the number of random dates you want to generate
number_of_dates <- 120

data <-
  tibble(
    dates = as.Date(
      runif(
        n = number_of_dates,
        min = as.numeric(start_date),
        max = as.numeric(end_date)
      ),
      origin = "1970-01-01"
    ),
    number_of_marriage = rpois(n = number_of_dates, lambda = 15)
  )


#### Write_csv
write_csv(data, file = "../data/raw_data/simulated.csv")