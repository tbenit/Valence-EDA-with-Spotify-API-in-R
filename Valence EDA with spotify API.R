install.packages("pacman")      #pacman seeks to combine functionality from lower level functions which can speed up workflow.
pacman::p_load(httr, jsonlite, dplyr, spotifyr) 

Sys.setenv(SPOTIFY_CLIENT_ID = 'CLIENT_ID')
Sys.setenv(SPOTIFY_CLIENT_SECRET = 'CLIENT_SECRET')

access_token <- get_spotify_access_token()


BadBunny <- get_artist_audio_features('Bad Bunny')
library(knitr) #this library  integrates computing and reporting. 
               #By incorporating code into text documents, the analysis, results and discussion are all in one place.
BadBunny %>% 
  count(key_mode, sort = TRUE) %>%   ## here we are counting how many songs are in a given KEY_NODE
  head(20) %>% 
  kable()    ## KABLE() MAKES THE OUTPUT LOOK A LOT NICER 
 

### What's the most joyful song the artist SZA has?

joy <- get_artist_audio_features('sza')
joy %>% 
  arrange(-valence) %>% 
   select(track_name, valence) %>%              # this shows the audio features of SZA according to valence in descending order. 
  head(10) %>%                                   # shows track_name and valence. show only top 5 and kable to make the table nice. 
  kable()                                    # Valence is the musical positiveness conveyed by a track. 

install.packages('ggjoy')
library(ggjoy)
library(ggplot2)

ggplot(joy, aes(x= valence, y = album_name)) + 
  geom_joy() + 
  theme_joy() 



### What's the most joyful song the artist Drake has?


Drake_joy <- get_artist_audio_features('Drake')

Drake_joy %>% 
  arrange(-valence) %>% 
  select(track_name, valence) %>%
  distinct() %>% 
  head(10) %>%                                  
  kable()                                    


ggplot(Drake_joy, aes(x= valence, y = album_name)) + 
  geom_joy() + 
  theme_joy() 












