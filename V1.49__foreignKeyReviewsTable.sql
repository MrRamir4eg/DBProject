ALTER TABLE reviews 
    ADD CONSTRAINT fk_reviews_student FOREIGN KEY (user_id) REFERENCES student (id);