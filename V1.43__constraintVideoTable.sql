alter table video add constraint check_subject_video check ((subject is not null) and (length(subject) between 1 and 30));