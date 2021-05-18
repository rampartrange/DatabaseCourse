create schema if not exists db_project;

create table if not exists Theatre (
    id              serial          NOT NULL primary key,
    name            varchar(255)    NOT NULL,
    metro_st        varchar(255)
);

create table if not exists Director (
    id              serial          NOT NULL primary key,
    first_nm        varchar(255)    NOT NULL,
    second_nm       varchar(255)    NOT NULL
);

create table if not exists Play (
    id              serial          NOT NULL primary key,
    theatre_id      serial          NOT NULL references Theatre (id),
    director_id     serial          NOT NULL references Director (id),
    name            varchar(255)    NOT NULL,
    duration_min    integer         ,
    day_dt          date            NOT NULL,
    time            time            NOT NULL
);

create table if not exists Actor (
    id              serial          NOT NULL primary key,
    first_nm        varchar(255)    NOT NULL,
    second_nm       varchar(255)    NOT NULL
);

create table if not exists Role (
    id              serial          NOT NULL primary key,
    name            varchar(255)    NOT NULL
);

create table if not exists Room (
    id              serial          NOT NULL primary key,
    theatre_id      serial          NOT NULL references Theatre (id),
    play_id         serial          NOT NULL references Play (id),
    name            varchar(255)    NOT NULL

);

create table if not exists Theatre_x_Director (
    theatre_id      integer         NOT NULL references Theatre (id),
    director_id     integer         NOT NULL references Director (id)

);

alter table Theatre_x_Director add constraint PK_Department_x_Teacher primary key (theatre_id, director_id);
alter table Theatre_x_Director add constraint FK_Department_x_Teacher foreign key (theatre_id) references Theatre (id);
alter table Theatre_x_Director add constraint FK_Teacher_x_Department foreign key (director_id) references Director (id);

create table if not exists Theatre_x_Actor (
    theatre_id      integer         NOT NULL references Theatre (id),
    actor_id        integer         NOT NULL references Actor (id)
);

alter table Theatre_x_Actor add constraint PK_Theatre_x_Actor primary key (theatre_id, actor_id);
alter table Theatre_x_Actor add constraint FK_Theatre_x_Actor foreign key (theatre_id) references Theatre (id);
alter table Theatre_x_Actor add constraint FK_Actor_x_Theatre foreign key (actor_id) references Actor (id);

create table if not exists Play_x_Role (
    play_id         integer         NOT NULL references Play (id),
    role_id         integer         NOT NULL references Role (id)
);

alter table Play_x_Role add constraint PK_Play_x_Role primary key (play_id, role_id);
alter table Play_x_Role add constraint FK_Play_x_Role foreign key (play_id) references Play (id);
alter table Play_x_Role add constraint FK_Role_x_Play foreign key (role_id) references Role (id);

create table if not exists Actor_x_Role (
    actor_id        integer         NOT NULL references Actor (id),
    role_id         integer         NOT NULL references Role (id)
);

alter table Actor_x_Role add constraint PK_Actor_x_Role primary key (actor_id, role_id);
alter table Actor_x_Role add constraint FK_Actor_x_Role foreign key (actor_id) references Actor (id);
alter table Actor_x_Role add constraint FK_Role_x_Actor foreign key (role_id) references Role (id);
