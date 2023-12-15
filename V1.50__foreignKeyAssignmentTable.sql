ALTER TABLE assignment 
    ADD CONSTRAINT fk_assignment_course FOREIGN KEY (course_id) REFERENCES course (id);