library(here)

gapminder <- readr::read_csv(here("data/gapminder/raw/gapminder.csv"))

head(gapminder)

mean(gapminder$gdpPercap[gapminder$continent == "Africa"])

mean(gapminder$gdpPercap[gapminder$continent == "Americas"])

library(tidyverse)

year_country_gdp <- select(gapminder, year, country, gdpPercap)

head(year_country_gdp)

year_country_gdp <- gapminder %>% 
     filter(continent =="Europe") %>%
     select(year, country, gdpPercap)

year_country_lifeexp <- gapminder %>% 
  filter(continent =="Africa") %>%
  select(year, country, lifeExp)

head(year_country_lifeexp)

year_country_gdp_group <- gapminder %>% 
  group_by(continent) %>%
  filter(continent =="Europe") %>%
  select(year, country, gdpPercap)

gapminder %>% 
  group_by(continent) %>%
  summarize(mean_val = mean(gdpPercap))

gapminder %>% 
  group_by(country) %>%
  summarize(mean_val = mean(lifeExp)) %>%
  arrange(mean_val)

gapminder %>% 
  group_by(country) %>%
  summarize(mean_val = mean(lifeExp),
  sd_gdpPercap = sd(gdpPercap))


gapminder %>%
 filter(continent == "Africa") %>%
ggplot(aes(x = year, y = lifeExp, color = continent))+
  geom_line() +
  facet_wrap( ~ country)








