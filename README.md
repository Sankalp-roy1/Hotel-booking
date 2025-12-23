---
title: "Document"
author: "Sankalp Roy"
date: "2025-12-22"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Setting up my enviorment

Notes: Setting up  the hotel booking data using the tidyverse and ggplot2.

```{r Loading packages}
library(tidyverse)
library(ggplot2)
library(readr)
hotel_bookings <- read_csv("C:/Users/ssnkl/Downloads/hotel_bookings.csv")

onlineta_city_hotels <- filter(hotel_bookings, 
                               (hotel=="" & 
                                  hotel_bookings$market_segment==""))

onlineta_city_hotels_v2 <- hotel_bookings %>%
  filter(hotel=="City Hotel") %>%
  filter(market_segment=="Online TA")

ggplot(data = onlineta_city_hotels_v2) +
  geom_point(mapping = aes(x = lead_time, y = children))+
  labs(title = "Lead time for City Hotel")

ggplot(data = hotel_bookings)+
  geom_bar(mapping = aes(x=hotel, fill = market_segment))
```

