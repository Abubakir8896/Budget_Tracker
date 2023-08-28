create database budget_tracker;

create table categories_input(
  input_category_id serial not null primary key,
  input_category_name varchar(32) not null
);

create table categories_output(
  output_category_id serial not null primary key,
  output_category_name varchar(32) not null
);

create table me(
  id serial not null primary key,
  balance float default 0
);

//default
insert into me(balance) VALUES (0);

create table history(
  id serial not null primary key,
  summa int not null,
  input_id int default null,
  output_id int default null,
  created_at timestamptz default current_timestamp,
  foreign key (input_id) references categories_input(input_category_id),
  foreign key (output_id) references categories_output(output_category_id) 
);