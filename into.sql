-- Заполнение таблицы Genre
INSERT INTO Genre (name) VALUES
('Rock'),
('Pop'),
('Hip-Hop'),
('Jazz'),
('Electronic');

-- Заполнение таблицы Executor 
INSERT INTO Executor (name) VALUES
('The Beatles'),
('Madonna'),
('Eminem'),
('Miles Davis'),
('Daft Punk'),
('Pixies');

INSERT INTO Executor (name) VALUES
('kizaru');

-- Заполнение таблицы Album 
INSERT INTO Album (name, year_release) VALUES
('Abbey Road', 1969),
('Like a Virgin', 1984),
('The Marshall Mathers LP', 2000),
('Kind of Blue', 1959),
('Random Access Memories', 2013),
('Surfer Rosa', 1988);

INSERT INTO Album (name, year_release) VALUES
('Carmageddon', 2019)

-- Заполнение таблицы Genre_Executor (связи исполнителей с жанрами)
INSERT INTO Genre_Executor (genreID, executorID) VALUES
(1, 1),  -- The Beatles - Rock
(2, 2),  -- Madonna - Pop
(3, 3),  -- Eminem - Hip-Hop
(4, 4),  -- Miles Davis - Jazz
(5, 5),  -- Daft Punk - Electronic
(2, 1),  -- The Beatles - Pop 
(1, 3),  -- Eminem - Rock (кроссовер жанров)
(1, 6),

INSERT INTO Genre_Executor (genreID, executorID) VALUES
(3, 7);

-- Заполнение таблицы Album_Executor (связи исполнителей с альбомами)
INSERT INTO Album_Executor (albumID, executorID) VALUES
(1, 1),  -- Abbey Road - The Beatles
(2, 2),  -- Like a Virgin - Madonna
(3, 3),  -- The Marshall Mathers LP - Eminem
(4, 4),  -- Kind of Blue - Miles Davis
(5, 5),  -- Random Access Memories - Daft Punk
(1, 4),  -- Abbey Road - Miles Davis (совместный альбом)
(6, 6);

INSERT INTO Album_Executor (albumID, executorID) VALUES
(7, 7)
-- Заполнение таблицы Track 
INSERT INTO Track (name, duration, albumID) VALUES
('Come Together', '00:04:20', 1),
('Here Comes the Sun', '00:03:05', 1),
('Material Girl', '00:04:00', 2),
('Like a Virgin', '00:03:10', 2),
('The Real Slim Shady', '00:04:44', 3),
('Stan', '00:06:44', 3),
('So What', '00:09:22', 4),
('Freddie Freeloader', '00:09:46', 4),
('Get Lucky', '00:06:07', 5),
('Instant Crush', '00:05:37', 5),
('Something', '00:03:02', 1),
('Borderline', '00:03:57', 2),
('Where Is My Mind?', '00:03:55', 6);

INSERT INTO Track (name, duration, albumID) VALUES
('Дежавю', '00:02:54', 7);

-- Заполнение таблицы Collection 
INSERT INTO Collection (name, release_year) VALUES
('Best of Rock', 2000),
('Pop Hits 80s', 1990),
('Hip-Hop Classics', 2010),
('Jazz Masters', 2005),
('Electronic Vibes', 2018);

-- Заполнение таблицы Collection_Track (связи сборников с треками)
INSERT INTO Collection_Track (collectionID, trackID) VALUES
(1, 1),   -- Best of Rock - Come Together
(1, 2),   -- Best of Rock - Here Comes the Sun
(1, 11),  -- Best of Rock - Something
(2, 3),   -- Pop Hits 80s - Material Girl
(2, 4),   -- Pop Hits 80s - Like a Virgin
(2, 12),  -- Pop Hits 80s - Borderline
(3, 5),   -- Hip-Hop Classics - The Real Slim Shady
(3, 6),   -- Hip-Hop Classics - Stan
(4, 7),   -- Jazz Masters - So What
(4, 8),   -- Jazz Masters - Freddie Freeloader
(5, 9),   -- Electronic Vibes - Get Lucky
(5, 10);  -- Electronic Vibes - Instant Crush
