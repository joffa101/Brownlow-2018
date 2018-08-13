library(fitzRoy)
library(tidyverse)

df<-fitzRoy::afldata
votes <- df%>%
    filter(Season==2017) %>%
    group_by(First.name , Surname, Playing.for) %>%
    summarise(brownlowvotes=sum(Brownlow.Votes) %>%
    filter(brownlowvotes != 0))
