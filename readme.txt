Follow this with the below tutorial. 

https://www.youtube.com/watch?v=Mey3ZGNsnMY 

if your "get_spotify_access_token" is not working and you cannot get the library(spotifyr) to work. 

Make sure to install pacman, and then use pacman to pull the spotifyr library. See below for
example.

 
install.packages("pacman")   #pacman seeks to combine functionality from lower level functions which can speed up workflow.
pacman::p_load(httr, jsonlite, dplyr, spotifyr) 