alter table assignment add constraint check_name_assignment check ((name is not null) and (length(name) between 1 and 50));
alter table assignment add constraint check_description_assignment check ((description is not null) and (length(description) between 1 and 300));
