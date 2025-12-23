library(tidyverse)
library(ggplot2)
library(hotel_bookings)



ggplot(data = hotel_bookings)+
  geom_bar(mapping = aes(x=hotel, fill = market_segment))

ggplot(data = diamonds)+
  geom_bar(mapping = aes(x=clarity,fill = clarity))+
  facet_wrap(~cut)


onlineta_city_hotels <- filter(hotel_bookings, 
                               (hotel=="" & 
                                  hotel_bookings$market_segment==""))

onlineta_city_hotels_v2 <- hotel_bookings %>%
  filter(hotel=="City Hotel") %>%
  filter(market_segment=="Online TA")

ggplot(data = onlineta_city_hotels_v2) +
  geom_point(mapping = aes(x = lead_time, y = children))+
  labs(title = "Lead time for City Hotel")