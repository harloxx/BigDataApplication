create or replace table country
(
    id   bigint auto_increment
        primary key,
    name varchar(255) not null,
    constraint country_name_uindex
        unique (name)
);

create or replace table director
(
    id   bigint auto_increment
        primary key,
    name varchar(255) not null,
    constraint director_name_uindex
        unique (name)
);

create or replace table distributor
(
    id   bigint auto_increment
        primary key,
    name varchar(255) not null,
    constraint distributor_name_uindex
        unique (name)
);

create or replace table film_type
(
    id   bigint auto_increment
        primary key,
    name varchar(255) not null,
    constraint film_type_name_uindex
        unique (name)
);

create or replace table genre
(
    id   bigint auto_increment
        primary key,
    name varchar(255) not null,
    constraint genre_name_uindex
        unique (name)
);

create or replace table rating
(
    id   bigint auto_increment
        primary key,
    rate varchar(255) not null,
    constraint rating_rate_uindex
        unique (rate)
);

create or replace table film
(
    id          bigint auto_increment
        primary key,
    year        int          not null,
    country_id  bigint       not null,
    director_id bigint       not null,
    rating_id   bigint       not null,
    type_id     bigint       not null,
    title       varchar(255) null,
    constraint FK4pqpakiyka8wwbiicmc0rgtwi
        foreign key (director_id) references director (id),
    constraint FK6xxf6ifuvw33h070iqlla38v4
        foreign key (type_id) references film_type (id),
    constraint FKkn6k7l7y3jg7bdu1bv0oskgd5
        foreign key (country_id) references country (id),
    constraint FKm6cyospmf7r278vmltxg8i2s2
        foreign key (rating_id) references rating (id)
);

create or replace table distributor_film
(
    id             bigint auto_increment
        primary key,
    distributor_id bigint not null,
    film_id        bigint not null,
    constraint FKavf3tlf78c9fsi80nfj43fv20
        foreign key (film_id) references film (id),
    constraint FKe53oecjmxj0hvrk84p5eig5vp
        foreign key (distributor_id) references distributor (id)
);

create or replace table genre_film
(
    id       bigint auto_increment
        primary key,
    film_id  bigint not null,
    genre_id bigint not null,
    constraint FK9p3dhf8wgeetdt06cavuc2fot
        foreign key (genre_id) references genre (id),
    constraint FKdy326gtx6qt4mrjjvr1w5pdms
        foreign key (film_id) references film (id)
);

create or replace table review
(
    id      bigint auto_increment
        primary key,
    review  varchar(255) null,
    film_id bigint       not null,
    constraint FKloj6cgl63e2nd5ykk8gvlu15b
        foreign key (film_id) references film (id)
);

create or replace table star
(
    id    bigint auto_increment
        primary key,
    point double not null,
    constraint star_point_uindex
        unique (point)
);

create or replace table review_star
(
    id        bigint auto_increment
        primary key,
    review_id bigint not null,
    star_id   bigint not null,
    constraint FK93db4cua5rk9f4igu1nhym6kv
        foreign key (star_id) references star (id),
    constraint FKahsav8v6e0odrtn79uf8xbbv8
        foreign key (review_id) references review (id)
);