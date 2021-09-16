# Part 1: Explore the Data


"1. How many songs are in each genre?"

  spotify_songs %>% count(playlist_genre)
  
"2. What is average value of energy and acousticness in the latin genre in this dataset?"

  aggregate(spotify_songs, by = list(Genre = spotify_songs$playlist_genre), mean)
  
"3. Calculate the average duration of song (in minutes) across all subgenres. Which subgenre 
has the longest song on average?"
  
  subgenre <- group_by(spotify_songs, playlist_subgenre)
  subgenre_durations <- summarize(subgenre, duration_ms = mean(duration_ms, na.rm = TRUE) )
  
"4. Make two boxplots side-by-side of the danceability of songs stratifying by whether a song 
has a fast or slow tempo. Define fast tempo as any song that has a tempo above its median 
value. On average, which songs are more danceable?"
  
  summary(spotify_songs$danceability)