# cm011 - participation exercises

# load packages
library(gapminder)
library(tidyverse)

gapminder

# export csv file onto disk - write_csv
write_csv(gapminder, '.\gapminder.csv')

view(gapminder)

# calculate mean life expectancy per continent
gapminder_sum <- gapminder %>%
  group_by(continent) %>%
  summarize(ave_lifeExp = mean(lifeExp))

view(gapminder_sum)

write_csv(gapminder_sum, '.\gapminder_sum.csv')

gapminder_sum %>%
  ggplot(aes(x = continent, y = ave_lifeExp)) +
  geom_point() + 
  theme_bw()

# reading in csv file
library(tidyverse)

gapminder_csv <- read_csv(".\gapminder_sum.csv")

view(gapminder_csv)

rm(list = ls()) # only removes variables (but does not detach loaded R packages) - instead, restart R session

# on windows: .\gapminder_sum.csv

read_csv(`.\test\tes\te\t\gapminder_sum.csv`)

# equivalent, but platform agnostic and directory-structure agnostic
library(here)

write_csv(here::here("test", "tes", "te", "t", "gapminder_sum.csv"))

# set route working directory
set_here()

# read Excel file

# data_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"

# download.file(url = data_url, destfile = here::here("great_give.xls"))

# file_name <- basename(data_url) # function to get filename from a URL

# download.file(url = data_url, destfile = here::here(basename(data_url)))

# download.file(url = data_url, destfile = here::here(file_name))


# read in Excel file
library(readxl)

philanthropists <- read_excel(here::here("GreatestGivers.xls"), trim_ws = TRUE)


library(tidyverse)
library(here)
library(readxl)

mri_file = here("Firas-MRI.xlsx")

mri <- read_excel(mri_file, range = "A1:L12")

mri <- mri[, -10]

mri <- mri %>%
  pivot_longer(cols = 'Slice 1':'Slice 8',
               names_to = 'slice_no',
               values_to = 'value')

view(mri)

# here::here allows R script to behave more similarly to R markdown files in terms of file paths

# download.file(..., mode = "wb")
