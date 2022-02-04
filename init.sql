CREATE TABLE hello_atul_new (
  id serial NOT NULL PRIMARY KEY,
  hello_source varchar(20),
  hello_target varchar(20)
);

INSERT INTO hello_atul_new (hello_source, hello_target)
  VALUES ('Matt', 'Whit');
