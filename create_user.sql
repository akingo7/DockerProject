CREATE USER 'tooling'@'%' IDENTIFIED BY 'password';
GRANT ALL ON *.* TO 'tooling'@'%';
FLUSH PRIVILEGES;
CREATE DATABASE toolingdb;
CREATE DATABASE tododb;
