alter table marketer add constraint check_name_marketer check ((name is not null) and (length(name) between 1 and 50));
alter table marketer add constraint check_password_marketer check ((password is not null) and (length(password) between 8 and 30));