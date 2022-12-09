CREATE TABLE users(
                      id int not null auto_increment primary key,
                      username varchar(45) NOT NULL,
                      password varchar(255) NOT NULL
)
    ENGINE = InnoDB;

CREATE TABLE role(
                     id int not null auto_increment primary key,
                     name varchar(100) NOT NULL
)

    ENGINE = InnoDB;