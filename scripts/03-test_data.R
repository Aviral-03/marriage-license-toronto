#### Preamble ####
# Purpose: Sanity check of the data
# Author: Aviral Bhardwaj
# Date: 19 September 2024
# Contact: aviral.bhardwaj@mail.utoronto.ca
# License: MIT
# Pre-requisites: Need to have simulated data
# Any other information needed? None.


#### Workspace setup ####
library(tidyverse)


#### Test data ####
data <- read_csv("data/raw_data/simulated.csv")

# Test for negative numbers
data$number_of_marriage |> min() <= 0

# Test for NAs
all(is.na(data$number_of_marriage))

# Test if all values are integers
all(data$number_of_marriage %% 1 == 0)

# Test if all values are positive
all(data$number_of_marriage >= 0)

# Test if all values are numeric
all(is.numeric(data$number_of_marriage))





