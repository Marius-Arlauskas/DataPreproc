setwd('C:/KTU/R/4paskaita')
library('tidyr')
library('plyr')

df <-  tidyr :: billboard
head(df)
?tidyr :: billboard
x <- df %>%
  pivot_longer(names_to = 'week_number',
               values_to = 'rank',
               cols = -c(artist, track, date.entered))

head(x)
x <- drop_na(x)
freq <- count(x, 'track')
mx <- max(freq['freq'])
freq[freq['freq'] == mx][1]
