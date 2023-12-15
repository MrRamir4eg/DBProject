create table curator(
    id bigserial primary key,
    email varchar(256) unique,
    password varchar
)