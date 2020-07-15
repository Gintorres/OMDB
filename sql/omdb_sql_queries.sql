-- Queries

-----------------------------------------------------------------------------
-- #33 - Nathan Al-Kurdi
-- Description: Tuples from both movies and movie_data, with respective COUNT()
-- from other tables.
-----------------------------------------------------------------------------

SELECT movies.movie_id, 
       movies.native_name, 
       movies.english_name, 
       movies.year_made, 
       movie_data.tag_line, 
       movie_data.language, 
       movie_data.country, 
       movie_data.genre, 
       movie_data.plot, 
       `trivia_count`, 
       `keyword_count`, 
       `media_count`, 
       `song_count`, 
       `people_count` 
FROM   `movies` 
       LEFT OUTER JOIN `movie_data` 
                    ON movies.movie_id = movie_data.movie_id 
       LEFT OUTER JOIN (SELECT movie_id, 
                               Count(movie_id) AS `trivia_count` 
                        FROM   `movie_trivia` 
                        GROUP  BY movie_id ASC) trivia 
                    ON movies.movie_id = trivia.movie_id 
       LEFT OUTER JOIN (SELECT movie_id, 
                               Count(movie_id) AS `keyword_count` 
                        FROM   `movie_keywords` 
                        GROUP  BY movie_id ASC) keywords 
                    ON movies.movie_id = keywords.movie_id 
       LEFT OUTER JOIN (SELECT movie_id, 
                               Count(movie_id) AS `media_count` 
                        FROM   `movie_media` 
                        GROUP  BY movie_id ASC) media 
                    ON movies.movie_id = media.movie_id 
       LEFT OUTER JOIN (SELECT movie_id, 
                               Count(movie_id) AS `song_count` 
                        FROM   `movie_song` 
                        GROUP  BY movie_id ASC) song 
                    ON movies.movie_id = song.movie_id 
       LEFT OUTER JOIN (SELECT movie_id, 
                               Count(movie_id) AS `people_count` 
                        FROM   `movie_people` 
                        GROUP  BY movie_id ASC) m_people 
                    ON movies.movie_id = m_people.movie_id 
GROUP  BY movies.movie_id ASC; 

-----------------------------------------------------------------------------
-- #36 - Nathan Al-Kurdi
-- Description: Gives the list of all movies that have a song with a title
-- matching some given substring.
-----------------------------------------------------------------------------

SELECT * 
FROM   (movies 
        NATURAL JOIN movie_song) 
       NATURAL JOIN songs 
WHERE  movies.movie_id = movie_song.movie_id 
       AND INSTR(songs.title, '') > 0; 

-----------------------------------------------------------------------------
-- #44 
-- Description: 
-----------------------------------------------------------------------------


-----------------------------------------------------------------------------
-- #45 - Christian Duvick
-- Description: Lists all movies where person x or person y appear (put stage
-- names in the '')
-----------------------------------------------------------------------------
SELECT movies.native_name 
FROM `movies`
WHERE movie_id IN (SELECT movie_id
                  FROM movie_people NATURAL JOIN people
                  WHERE people.stage_name = '' OR people.stage_name = '')

-----------------------------------------------------------------------------
-- #49 - Gina Bjork
-- Description: List of all movies which contain the songs written by a lyricist
-----------------------------------------------------------------------------

SELECT movies.movie_id, movies.english_name, people.stage_name, song_people.role
FROM `movies` 
INNER JOIN `song_people` ON song_people.song_id = movies.movie_id
INNER JOIN people ON people.people_id = song_people.people_id
WHERE movies.english_name LIKE ""
OR people.stage_name LIKE "";

-----------------------------------------------------------------------------
-- #50 
-- Description: 
-----------------------------------------------------------------------------


-----------------------------------------------------------------------------
-- #51 - Christopher Pellegrino
-- Description: List of all movies where Person X is the Director and Person Y
-- is the "Lead Actor" (stage_names are input).
-----------------------------------------------------------------------------

SELECT *
FROM (movies
NATURAL JOIN movie_people)
NATURAL JOIN people
WHERE (movie_people.role = 'Director'
AND people.stage_name = 'X')
OR (movie_people.role = 'Lead Actor'
AND people.stage_name = 'Y');




















