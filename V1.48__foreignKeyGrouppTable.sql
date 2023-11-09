ALTER TABLE groupp 
    ADD CONSTRAINT fk_groupp_course FOREIGN KEY (course_id) REFERENCES course (id);
