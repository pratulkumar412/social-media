create database social_media;
use social_media;

create table user_info (reg_no varchar(11) PRIMARY KEY NOT NULL, email_id varchar(30) UNIQUE NOT NULL,name varchar(256), password varchar(256),intro varchar(64),facebook_link VARCHAR(40) UNIQUE, linkedin_link VARCHAR(40) UNIQUE);

CREATE TABLE posts(post_id INT AUTO_INCREMENT PRIMARY KEY,reg_no VARCHAR(11) NOT NULL, heading VARCHAR(128) NOT NULL,body VARCHAR(1000) NOT NULL,posted_on DATETIME, upvotes INT);

CREATE TABLE tags(tag_id INT AUTO_INCREMENT primary key, tag_name VARCHAR(32) );

CREATE TABLE post_tag(post_id INT, tag_id INT);

CREATE TABLE comments(post_id INT, reg_no VARCHAR(11) , comment VARCHAR(512), comment_time DATETIME);

CREATE TABLE messages(sender_reg_no VARCHAR(11) , receiver_reg_no VARCHAR(11) , message VARCHAR(256) );

CREATE TABLE upvote(post_id INT,reg_no VARCHAR(11), FOREIGN KEY (post_id) REFERENCES posts(post_id) ON DELETE CASCADE);
show tables;