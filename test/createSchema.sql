    alter table Borrow 
        drop 
        foreign key FK76F19615D28EBEE;

    alter table Borrow 
        drop 
        foreign key FK76F19615CB96842E;

    alter table Copy 
        drop 
        foreign key FK202395D82DC76E;

    alter table Fault 
        drop 
        foreign key FK4084A02D28EBEE;

    alter table Fault 
        drop 
        foreign key FK4084A02CB96842E;

    alter table Role_Authority 
        drop 
        foreign key FK37ADD2BA266BC04E;

    alter table Role_Authority 
        drop 
        foreign key FK37ADD2BAF0C53068;

    alter table Search 
        drop 
        foreign key FK935F51C8CB96842E;

    alter table User_Role 
        drop 
        foreign key FK8B9F886ACB96842E;

    alter table User_Role 
        drop 
        foreign key FK8B9F886AC48438A7;

    drop table if exists Authority;

    drop table if exists Book;

    drop table if exists Borrow;

    drop table if exists Copy;

    drop table if exists Fault;

    drop table if exists Role;

    drop table if exists Role_Authority;

    drop table if exists Search;

    drop table if exists User;

    drop table if exists User_Role;

    create table Authority (
        id integer not null auto_increment,
        name varchar(255),
        primary key (id)
    );

    create table Book (
        id integer not null auto_increment,
        author varchar(255),
        category varchar(255),
        isbn varchar(255),
        language varchar(255),
        name varchar(255),
        price double precision not null,
        publisher varchar(255),
        pubtime varchar(255),
        remark varchar(255),
        translator varchar(255),
        primary key (id)
    );

    create table Borrow (
        id integer not null auto_increment,
        borrowTime datetime,
        haveReturned bit not null,
        realReturnTime datetime,
        remark varchar(255),
        renewTimes integer not null,
        shouldReturnTime datetime,
        copy_id integer,
        user_id integer,
        primary key (id)
    );

    create table Copy (
        id integer not null auto_increment,
        barcode varchar(255) unique,
        bookshelf varchar(255),
        borrowed bit not null,
        entertime datetime,
        logoff bit not null,
        outtime datetime,
        status varchar(255),
        book_id integer,
        primary key (id)
    );

    create table Fault (
        id integer not null auto_increment,
        fine double precision not null,
        time datetime,
        type varchar(255),
        copy_id integer,
        user_id integer,
        primary key (id)
    );

    create table Role (
        id integer not null auto_increment,
        name varchar(255),
        primary key (id)
    );

    create table Role_Authority (
        Role_id integer not null,
        authorities_id integer not null,
        primary key (Role_id, authorities_id)
    );

    create table Search (
        id integer not null auto_increment,
        content varchar(255),
        time datetime,
        user_id integer,
        primary key (id)
    );

    create table User (
        id integer not null auto_increment,
        address varchar(255),
        borrowed integer not null,
        cellphone varchar(255),
        email varchar(255),
        idnumber varchar(255),
        limitNumber integer not null,
        password varchar(255),
        realname varchar(255),
        remark varchar(255),
        sex varchar(255),
        username varchar(255),
        primary key (id)
    );

    create table User_Role (
        User_id integer not null,
        roles_id integer not null,
        primary key (User_id, roles_id)
    );

    alter table Borrow 
        add index FK76F19615D28EBEE (copy_id), 
        add constraint FK76F19615D28EBEE 
        foreign key (copy_id) 
        references Copy (id);

    alter table Borrow 
        add index FK76F19615CB96842E (user_id), 
        add constraint FK76F19615CB96842E 
        foreign key (user_id) 
        references User (id);

    alter table Copy 
        add index FK202395D82DC76E (book_id), 
        add constraint FK202395D82DC76E 
        foreign key (book_id) 
        references Book (id);

    alter table Fault 
        add index FK4084A02D28EBEE (copy_id), 
        add constraint FK4084A02D28EBEE 
        foreign key (copy_id) 
        references Copy (id);

    alter table Fault 
        add index FK4084A02CB96842E (user_id), 
        add constraint FK4084A02CB96842E 
        foreign key (user_id) 
        references User (id);

    alter table Role_Authority 
        add index FK37ADD2BA266BC04E (Role_id), 
        add constraint FK37ADD2BA266BC04E 
        foreign key (Role_id) 
        references Role (id);

    alter table Role_Authority 
        add index FK37ADD2BAF0C53068 (authorities_id), 
        add constraint FK37ADD2BAF0C53068 
        foreign key (authorities_id) 
        references Authority (id);

    alter table Search 
        add index FK935F51C8CB96842E (user_id), 
        add constraint FK935F51C8CB96842E 
        foreign key (user_id) 
        references User (id);

    alter table User_Role 
        add index FK8B9F886ACB96842E (User_id), 
        add constraint FK8B9F886ACB96842E 
        foreign key (User_id) 
        references User (id);

    alter table User_Role 
        add index FK8B9F886AC48438A7 (roles_id), 
        add constraint FK8B9F886AC48438A7 
        foreign key (roles_id) 
        references Role (id);
