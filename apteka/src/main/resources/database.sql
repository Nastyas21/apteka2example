CREATE TABLE users(
                      id int not null auto_increment primary key,
                      username varchar(45) NOT NULL,
                      password varchar(255) NOT NULL
)
    ENGINE = InnoDB;

CREATE TABLE roles(
                     id int not null auto_increment primary key,
                     name varchar(100) NOT NULL
)

    ENGINE = InnoDB;

CREATE TABLE user_roles(
    user_id INT NOT NULL,
    role_id INT NOT NULL,

    FOREIGN KEY(user_id) REFERENCES users (id),
    FOREIGN KEY (role_id) REFERENCES roles(id),

    UNIQUE (user_id, role_id)


)

    ENGINE = InnoDB;

INSERT INTO users VALUES (1, 'nikitaAdmin', 'adminadmin');
INSERT INTO roles VALUES (1, 'user');
INSERT INTO roles VALUES (2, 'admin');

INSERT INTO user_roles VALUES (1,2);


