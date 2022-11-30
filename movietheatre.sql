create table Customers(
    customer_id serial primary key,
    is18 BOOLEAN
);

create table Concessions(
    concession_id serial primary key,
    product varchar(50),
    quantity integer
);

create table Movies(
    movie_id serial primary key,
    Title varchar(100)
    
);

create table Tickets(
    ticket_id serial primary key,
    isPaid BOOLEAN,
    customer_id integer not null,
    movie_id integer not null,
    foreign key (customer_id) references Customers(customer_id),
    foreign key (movie_id) references Movies(movie_id)
)

--Population Time :)

insert into Tickets(
    isPaid,
    customer_id,
    movie_id
)
values(
    True,
    2,
    1
),
(
    False,
    1,
    3
)

insert into Concessions(
    product,
    quantity
)
values(
    'Pizza',
    3
);
select *
from concessions


insert into Customers(
    is18
)
values(
    False
);

insert into Movies(
    Title
)
values(
    'Brown Sugar'
),
(
    'Popeye'
),
(
    'Blue Streak'
);