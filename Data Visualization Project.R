#VID1
library(tidyverse)

data()
?BOD

ggplot(data = BOD,
       mapping = aes(x = Time,
                     y = demand))+
  geom_point(size = 5)+
  geom_line(colour = "red")
data()

View(CO2)

CO2 %>%
  ggplot(aes(conc, uptake, 
             colour = Treatment))+
  geom_point(size = 3, alpha = 0.5)+
  geom_smooth(method = lm, se = F)+
  facet_wrap(~Type)+
  labs(Title = "Concentration of CO2")+
  theme_bw()

CO2 %>%
  ggplot(aes(Treatment, uptake))+
  geom_boxplot()+
  geom_point(aes(size = conc,
                 colour = Plant))+
  facet_wrap(~Type)+
  coord_flip()+
  theme_bw()+
  labs(title = "Chilled vs Non-chilled")

View(mpg)

mpg %>%
  filter(cty < 25) %>%
  ggplot(aes(displ, cty))+
  geom_point(aes(colour = drv,
                 size = trans),
             alpha = 0.5)+
  geom_smooth(method = lm)+
  facet_wrap(~year, nrow = 1)+
  labs(x = "Egine size",
       y = "MPG in the city",
       title = "Fuel efficiency")+
  theme_bw()
  

#VID2
library(tidyverse)
data()
?mpg
names(mpg)

mpg %>%
  filter(hwy < 35) %>%
  ggplot(aes(x = displ,
             y = hwy,
             colour = drv)) +
  geom_point()+
  geom_smooth(method = lm,
              se = F)+
  labs(x = "engine size",
       y = "MPG on the highway",
       title = "Fuel effiency")+
  theme_minimal()




#VID3
library(tidyverse)
library(forcats)
data()
?msleep
View(msleep)

msleep %>%
  drop_na(vore) %>%
  ggplot(aes(fct_infreq(vore)))+
  geom_bar(fill = "#97B3c6")+
  #coord_flip()+
  theme_bw()+
  labs(x = "Who eats what?",
       y = NULL,
       title = "Number of observations per order")

msleep %>%
  ggplot(aes(x = awake)) +
  geom_histogram(binwidth = 1, fill ="#97B3C6")
theme_bw()+
  labs(x + "Total Sleep",
       y = NULL,
       title + "Histogram of total sleep")

#VID4
library(tidyverse)
data()  
view(msleep)
names(msleep)

msleep %>%
  drop_na(vore) %>%
  ggplot(aes(fct_infreq(vore)))+
  geom_bar(fill = "#97B3c6")+
  #coord_flip()+
  theme_bw()+
  labs(x = "Who eats what?",
       y = NULL,
       title = "Number of Observations per Order")

msleep %>%
  filter(bodywt < 2) %>%
  ggplot(aes(bodywt, brainwt))+
  geom_point(aes(color = sleep_total,
             size = awake))+
  geom_smooth(method = lm,
              se = F)+
  labs(x = "Body Weight",
       y = "Brain Weight",
       title = "Brain and Body Weight")+
  theme_minimal()
  