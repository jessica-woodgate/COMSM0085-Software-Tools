DROP TABLE IF EXISTS Attendees;
DROP TABLE IF EXISTS Committee;
DROP TABLE IF EXISTS Member;
DROP TABLE IF EXISTS Event;

CREATE TABLE Event (
   id INTEGER PRIMARY KEY AUTO_INCREMENT,
   event_date DATE NOT NULL,
   location VARCHAR(100) NOT NULL,
   description TEXT
);
CREATE TABLE Member (
   id INTEGER PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(100) NOT NULL,
   student_number INTEGER,
   email VARCHAR(100) UNIQUE NOT NULL,
   skill_level INTEGER NOT NULL
);
CREATE TABLE Committee (
   id INTEGER PRIMARY KEY,
   role VARCHAR(100) NOT NULL,
   FOREIGN KEY member REFERENCES Member(id)
);
CREATE TABLE Attendees (
   id INTEGER PRIMARY KEY AUTO_INCREMENT,
   FOREIGN KEY event REFERENCES Event(id),
   FOREIGN KEY member REFERENCES Member(id)
);
