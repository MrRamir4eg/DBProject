ALTER TABLE message 
    ADD CONSTRAINT fk_message_student FOREIGN KEY (student_id) REFERENCES student (id);

ALTER TABLE message 
    ADD CONSTRAINT fk_message_curator FOREIGN KEY (curator_id) REFERENCES curator (id);