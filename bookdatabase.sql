SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
-- Table structure for table `admin_table`
--
CREATE TABLE IF NOT EXISTS `admin_table` (
  	`admin_id` INT(10) NOT NULL AUTO_INCREMENT,
  	`admin_user_name` VARCHAR(30) NOT NULL,
  	`admin_password` VARCHAR(255) NOT NULL,
  	PRIMARY KEY (`admin_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 AUTO_INCREMENT = 1;

--
-- `admin_table`
--

INSERT INTO `admin_table` (`admin_user_name`, `admin_password`) VALUES 
('admin', 'admin'), 
('root', 'root');

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `support_team_table` (
	`support_id` INT(10) NOT NULL AUTO_INCREMENT,
	`support_user_name` VARCHAR(30) NOT NULL,
	`support_password` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`support_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 AUTO_INCREMENT = 1;

--  `support_team_table`


INSERT INTO `support_team_table` (`support_user_name`, `support_password`) VALUES
('support', 'support'),
('support1', 'support2');

-- --------------------------------------------------------

-- Table structure for table `contact_table`
--

CREATE TABLE IF NOT EXISTS `contact_table` (
  	`contact_id` INT(10) NOT NULL AUTO_INCREMENT,
  	`contact_full_name` VARCHAR(100) NOT NULL,
  	`contact_actual_id` VARCHAR(100) NOT NULL,
  	`contact_mobile_number` VARCHAR(15) NOT NULL,
  	`contact_email` VARCHAR(60) NOT NULL,
  	`contact_message` LONGTEXT NOT NULL,
  	`contact_time` VARCHAR(20) NOT NULL,
  	PRIMARY KEY (`contact_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 AUTO_INCREMENT = 1;


-- contact_table


INSERT INTO `contact_table` (`contact_full_name`, `contact_mobile_number`, `contact_email`, `contact_message`, `contact_time`) VALUES
('Brian Otieno',   254712345678, 'brian.otieno@gmail.com',  'Great selection of books!', '1554092678'),
('Faith Mwikali',  254701234567, 'faith.mwikali@gmail.com', 'Loving the book variety!',  '1554201509'),
('Daniel Kiptoo',  254733456789, 'daniel.kiptoo@gmail.com', 'Looking for recent releases', '1554219813');

-- book_table

CREATE TABLE IF NOT EXISTS `book_table` (
  	`book_id` INT(10) NOT NULL AUTO_INCREMENT,
  	`book_name` VARCHAR(50) NOT NULL,
  	`book_category` VARCHAR(50) NOT NULL,
  	`book_description` LONGTEXT NOT NULL,
  	`book_price` INT(4) NOT NULL,
  	`book_img` VARCHAR(255) NOT NULL,
  	`book_time` INT(20) NOT NULL,
  	PRIMARY KEY (`book_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 AUTO_INCREMENT = 1;

-- book_table

INSERT INTO `book_table` (`book_name`, `book_category`, `book_description`, `book_price`, `book_img`) VALUES
('Harry Potter and the Chamber of Secrets', 'Fantasy', 'Harry returns for his second year at Hogwarts, where a dark force is petrifying students and secrets lie hidden beneath the school.', 2900, 'https://m.media-amazon.com/images/I/91OINeHnJGL._SL1500_.jpg'),

('The Great Gatsby', 'Classic Fiction', 'The story of the millionaire Jay Gatsby and his pursuit of the American Dream.', 2000, 'https://m.media-amazon.com/images/M/MV5BMTkxNTk1ODcxNl5BMl5BanBnXkFtZTcwMDI1OTMzOQ@@._V1_.jpg'),

('The Hobbit', 'Fantasy', 'A young hobbit, Bilbo Baggins, embarks on a quest to reclaim a lost treasure from the dragon Smaug.', 1500, 'https://m.media-amazon.com/images/M/MV5BMzU0NDY0NDEzNV5BMl5BanBnXkFtZTgwOTIxNDU1MDE@._V1_.jpg'),

('The Lord of the Rings', 'Fantasy', 'The epic saga of the hobbits, the ring bearer, and the wizard Gandalf.', 3000, 'https://mediaproxy.tvtropes.org/width/1200/https://static.tvtropes.org/pmwiki/pub/images/the_lord_of_the_rings.png'),

('The Chronicles of Narnia', 'Fantasy', 'A series of adventures in a magical world where magic works for good and evil.', 2500, 'https://img.perlego.com/book-covers/4257998/9781998114641.jpg'),

('Percy Jackson and the Olympians: The Lightning Thief', 'Fantasy', 'Percy discovers he is the son of Poseidon and embarks on a quest to retrieve Zeus\ lightning bolt and prevent a war among the gods.', 2500, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk2EbmTHm3Q-LvxumYtHjaRu63ELvUDcKfel-89iyojjTbQ6ELLa-QcaSUS9PzzyVJ91Y&usqp=CAU'),

('Brave New World', 'Dystopian', 'A futuristic society where humans are genetically engineered and conditioned for conformity. A chilling vision of a totalitarian future.', 2500, 'https://m.media-amazon.com/images/I/81zE42gT3xL._SL1500_.jpg'),

('1984', 'Dystopian', 'George Orwell’s classic novel about a totalitarian regime that uses surveillance and propaganda to oppress citizens. Big Brother is watching.', 2500, 'https://m.media-amazon.com/images/I/71kxa1-0mfL._SL1500_.jpg'),

('The Road to Wigan Pier', 'Non-fiction', 'George Orwell’s deep dive into the struggles of the British working class during the 1930s, exposing the grim realities of poverty.', 1500, 'https://m.media-amazon.com/images/I/71v88AfuQSL._SL1500_.jpg'),

('Crime and Punishment', 'Classic Fiction', 'Dostoevsky’s psychological thriller about a man who justifies murder, only to face guilt and redemption.', 3500, 'https://m.media-amazon.com/images/I/81EcXiV-9WL._SL1500_.jpg'),

('Demons', 'Political Fiction', 'A dark political satire that explores radicalism and revolution in 19th-century Russia, inspired by true events.', 2000, 'https://m.media-amazon.com/images/I/71ZTGImfZZL._SL1500_.jpg'),

('Beyond Good and Evil', 'Philosophy', 'Nietzsche’s critical treatise on morality, truth, and philosophy beyond traditional binaries of good and evil.', 3000, 'https://m.media-amazon.com/images/I/81pLz6e3IJL._SL1500_.jpg'),

('Ordinary Men', 'History', 'A chilling study of how average German men became perpetrators of the Holocaust through conformity and obedience.', 3500, 'https://m.media-amazon.com/images/I/71NM4+tBi3L._SL1360_.jpg'),

('The Painted Bird', 'Literary Fiction', 'A haunting tale of a boy’s brutal journey through Eastern Europe during World War II, confronting humanity’s darkest side.', 2000, 'https://m.media-amazon.com/images/I/81gIh3Ye9SL._SL1500_.jpg'),

('The Rape of Nanking', 'History', 'Iris Chang’s harrowing account of the Nanking Massacre, one of the most brutal atrocities of World War II.', 3700, 'https://m.media-amazon.com/images/I/615eNb6XCwL._SL1360_.jpg'),

('The Gulag Archipelago', 'Memoir', 'Solzhenitsyn’s groundbreaking exposé of the Soviet forced labor camp system, blending personal memoir and political critique.', 2500, 'https://m.media-amazon.com/images/I/71m4x9+UKHL._SL1500_.jpg'),

('Man’s Search for Meaning', 'Psychology', 'Viktor Frankl’s memoir and psychological guide to finding purpose even in the darkest circumstances of the Holocaust.', 1500, 'https://m.media-amazon.com/images/I/71OLtGMB0PL._SL1500_.jpg'),

('Modern Man in Search of a Soul', 'Psychology', 'A foundational work in Jungian psychology, exploring dreams, the unconscious, and the divide between science and spirituality.', 2000, 'https://m.media-amazon.com/images/I/91qYTvflcHL._SL1500_.jpg'),

('Maps of Meaning', 'Psychology', 'Jordan Peterson’s exploration of mythology, neuroscience, and belief systems, examining the structure of meaning across cultures.', 3000, 'https://m.media-amazon.com/images/I/61OGpzaVLvL._SL1500_.jpg'),

('A History of Religious Ideas', 'Religious Studies', 'Mircea Eliade traces the evolution of spiritual and religious thought across cultures from prehistory to modern times.', 1500, 'https://m.media-amazon.com/images/I/518Z7q3EdNL._SL1000_.jpg'),

('Affective Neuroscience', 'Neuroscience', 'Jaak Panksepp’s detailed exploration of the neural basis of emotions, combining science, psychology, and consciousness.', 3000, 'https://m.media-amazon.com/images/I/71bVN8ZwdwL._SL1360_.jpg');



-- --------------------------------------------------------

-- category_table

CREATE TABLE IF NOT EXISTS `category_table` (
  	`category_id` INT(10) NOT NULL AUTO_INCREMENT,
  	`category_name` VARCHAR(50) NOT NULL,
  	PRIMARY KEY (`category_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 AUTO_INCREMENT = 1;

-- category_table`

INSERT INTO `category_table` (`category_name`) VALUES
('Thriller'),
('Architecture'),
('Test Preparation'),
('Programming'),
('UI/UX Design'),
('Business'),
('Comics'),
('Sports & Fitness'),
('Business Management');
-- --------------------------------------------------------

-- order_table

CREATE TABLE IF NOT EXISTS `order_table` (
  	`order_id` INT(10) NOT NULL AUTO_INCREMENT,
  	`order_name` VARCHAR(30) NOT NULL,
  	`order_address` VARCHAR(200) NOT NULL,
  	`order_pincode` INT(20) NOT NULL,
  	`order_city` VARCHAR(30) NOT NULL,
  	`order_state` VARCHAR(30) NOT NULL,
  	`order_mobile` VARCHAR(15) NOT NULL,
  	`order_register_id` INT(8) NOT NULL,
  	`order_total_price` INT(50) NOT NULL,
  	`order_list_books` LONGTEXT NOT NULL,
  	PRIMARY KEY (`order_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 AUTO_INCREMENT = 1;

-- order_table

INSERT INTO `order_table` (`order_name`, `order_address`, `order_pincode`, `order_city`, `order_state`, `order_mobile`, `order_register_id`, `order_total_price`, `order_list_books`) VALUES
('Brian Otieno', 'Moi Avenue 101', 00100, 'Nairobi', 'Nairobi County', 254712345678, 1, 5000, 'book_id-amount: 15-2, book_id-amount: 16-3'),
('Grace Wanjiku', 'Kenyatta Road 22', 20100, 'Nakuru', 'Nakuru County', 254701234567, 1, 5400, 'book_id-amount: 17-1, book_id-amount: 18-4');

-- --------------------------------------------------------

-- register_table

CREATE TABLE IF NOT EXISTS `register_table` (
  	`register_id` INT(10) NOT NULL AUTO_INCREMENT,
  	`register_full_name` VARCHAR(100) NOT NULL,
  	`register_user_name` VARCHAR(50) NOT NULL,
  	`register_password` VARCHAR(255) NOT NULL,
  	`register_contact_number` VARCHAR(15) NOT NULL,
  	`register_email` VARCHAR(60) NOT NULL,
  	`register_question` VARCHAR(100) NOT NULL,
  	`register_answer` VARCHAR(50) NOT NULL,
  	`register_profile_picture` VARCHAR(50) NOT NULL DEFAULT 'profile_img/profile_default_picture.png',
  	`register_time` VARCHAR(20) NOT NULL,
  	PRIMARY KEY (`register_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 AUTO_INCREMENT = 1;

-- register_table`

INSERT INTO `register_table` (`register_full_name`, `register_user_name`, `register_password`, `register_contact_number`, `register_email`, `register_question`, `register_answer`) VALUES
('Kevin Smith',    'Kevin', 'kevin123',      0700000000, 'kevin@gmail.com', 'Which is your Favourite Movie ?', 'redemption'),
('Shantal Tuff',  'Shantal',   'shantal12345',  0700000012, 'shantal@gmail.com',     'Which is your Favourite Movie ?', '123'),
('George Kan',   'Ata',     'George000', 0700000023, 'georgr@gmail.com',      'Which is your Favourite Movie ?', 'prometheus');

-- --------------------------------------------------------

-- user_support_table

CREATE TABLE IF NOT EXISTS `user_support_table` (
    `user_support_id` INT(10) NOT NULL AUTO_INCREMENT,
    `user_support_actual_id` INT(10) NOT NULL,
    `user_support_email` VARCHAR(255) NOT NULL,
    `user_support_subject` VARCHAR(255) NOT NULL,
    `user_support_message` TEXT NOT NULL,
    `user_support_status` ENUM('Open', 'Closed') DEFAULT 'Open',
    `user_support_created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`user_support_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 AUTO_INCREMENT = 1;

-- user_support_table

INSERT INTO `user_support_table` (`user_support_email`, `user_support_subject`, `user_support_message`) VALUES
('eugene@gmail.com', 'User error',          'Help with with error login system'),
('mathenge@gmail.com',    'Delivery problem',    'Hi there, help me with delivery'),
('levis@gmail.com',  'How to search books', 'Hello, I can not find books');

-- --------------------------------------------------------
