DROP TABLE IF EXISTS question_likes;
DROP TABLE IF EXISTS replies;
DROP TABLE IF EXISTS question_follows;
DROP TABLE IF EXISTS questions;
DROP TABLE IF EXISTS users;
PRAGMA foreign_keys = ON;

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    fname TEXT NOT NULL,
    lname TEXT NOT NULL
);

CREATE TABLE questions (
    id INTEGER PRIMARY KEY,
    title TEXT,
    body TEXT,
    author_id INTEGER NOT NULL,
    FOREIGN KEY (author_id) REFERENCES users(id)
);

CREATE TABLE question_follows (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    question_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(id),
    FOREIGN KEY (question_id) REFERENCES questions(id)    
);

CREATE TABLE replies (
    id INTEGER PRIMARY KEY,
    question_id INTEGER NOT NULL,
    parent_reply_id INTEGER,
    user_id INTEGER NOT NULL,
    body TEXT,
    FOREIGN KEY (question_id) REFERENCES questions(id),
    FOREIGN KEY (parent_reply_id) REFERENCES replies(id),
    FOREIGN KEY (user_id) REFERENCES user(id)   
);

CREATE TABLE question_likes (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    question_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(id),
    FOREIGN KEY (question_id) REFERENCES questions(id)    
);

INSERT INTO 
    users(fname, lname)
VALUES
    ('Brynn', 'Johnson'),
    ('Annie', 'Xu'),
    ('Tiny', 'Tim');

INSERT INTO
    questions(title, body, author_id)
VALUES
    ('SQL', 'How do I use SQL?', 1)
    ('What', 'What is going on?', 2),
    ('Sky', 'Why is the sky blue?', 3);

INSERT INTO
    question_follows(user_id, question_id)
VALUES
    (1, 2),
    (3, 1),
    (2, 3);

INSERT INTO
    replies(question_id, parent_reply_id, user_id, body)
VALUES
    (1, NULL, 1, 'I do not know'),
    (2, NULL, 2, 'It is almost Christmas'),
    (3, NULL, 3, 'Refracted light');

INSERT INTO
    question_likes(user_id, question_id)
VALUES
    (1,3),
    (1,2),
    (2,1);
