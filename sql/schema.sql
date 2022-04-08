DROP IF EXISTS `categories`;
DROP IF EXISTS `jobs`;

CREATE TABLE categories(id INT PRIMARY KEY AUTO_INCREMENT,
                        name text,
                        img text);

CREATE TABLE jobs(id INT PRIMARY KEY AUTO_INCREMENT,
                   name varchar(45) NOT NULL,
                   company varchar(45) NOT NULL,
                   description text NOT NULL,
                   img text NOT NULL,
                    date date NOT NULL,
                    status enum('Created','Approved','Deleted') NOT NULL,
                    distinguished int NOT NULL,
                    details text NOT NULL,
                    salary double NOT NULL,
                    category INT,
                    FOREIGN KEY (category) REFERENCES categories(id)
                    );