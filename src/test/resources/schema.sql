CREATE TABLE users
(
  id uuid NOT NULL,
  country character(255),
  money bigint,
  creation_date date,
  CONSTRAINT users_pkey PRIMARY KEY (id)
);


CREATE TABLE user_data
(
  key character(255) NOT NULL,
  value character(255),
  user_id uuid NOT NULL,
  CONSTRAINT pk PRIMARY KEY (user_id, key),
  CONSTRAINT user_data_ref FOREIGN KEY (user_id)
  REFERENCES public.users (id)
  ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "Unique_key" UNIQUE (user_id, key)
);

INSERT INTO users  (id,country,money) values( '550e8400-e29b-41d4-a716-446655440001', 'ru', 1000 );
insert into user_data (key, value, user_id) VALUES ('data.field1', '"val1"','550e8400-e29b-41d4-a716-446655440001');