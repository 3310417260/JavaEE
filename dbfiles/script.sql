create table security
(
    id          int auto_increment
        primary key,
    title       varchar(255) null,
    context     text         null,
    createdtime varchar(255) null,
    changetime  varchar(255) null,
    user        varchar(255) null
);

create table securitywith
(
    id          int auto_increment
        primary key,
    title       varchar(255) null,
    context     text         null,
    createdtime varchar(255) null,
    changetime  varchar(255) null,
    user        varchar(255) null,
    withc       int          null
);

create table bbs_forcomplain
(
    id          int auto_increment
        primary key,
    title       varchar(255) null,
    context     text         null,
    createdtime varchar(255) null,
    changetime  varchar(255) null,
    user        varchar(255) null
);

create table bbs_forcomplainwith
(
    id          int auto_increment
        primary key,
    title       varchar(255) null,
    context     text         null,
    createdtime varchar(255) null,
    changetime  varchar(255) null,
    user        varchar(255) null,
    withc       int          null
);

create table dev
(
    id          int auto_increment
        primary key,
    title       varchar(255) null,
    context     text         null,
    createdtime varchar(255) null,
    changetime  varchar(255) null,
    user        varchar(255) null
);

create table devwith
(
    id          int auto_increment
        primary key,
    title       varchar(255) null,
    context     text         null,
    createdtime varchar(255) null,
    changetime  varchar(255) null,
    user        varchar(255) null,
    withc       int          null
);

create table web3
(
    id          int auto_increment
        primary key,
    title       varchar(255) null,
    context     text         null,
    createdtime varchar(255) null,
    changetime  varchar(255) null,
    user        varchar(255) null
);

create table web3with
(
    id          int auto_increment
        primary key,
    title       varchar(255) null,
    context     text         null,
    createdtime varchar(255) null,
    changetime  varchar(255) null,
    user        varchar(255) null,
    withc       int          null
);

create table exp
(
    id          int auto_increment
        primary key,
    title       varchar(255) null,
    context     text         null,
    createdtime varchar(255) null,
    changetime  varchar(255) null,
    user        varchar(255) null
);

create table expwith
(
    id          int auto_increment
        primary key,
    title       varchar(255) null,
    context     text         null,
    createdtime varchar(255) null,
    changetime  varchar(255) null,
    user        varchar(255) null,
    withc       int          null
);

create table bbs_user
(
    id        int auto_increment
        primary key,
    username  varchar(255) null,
    password  varchar(255) null,
    userroles varchar(255) null,
    userpics  text         null,
    messages  varchar(255) null
);


