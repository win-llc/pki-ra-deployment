# create databases
CREATE DATABASE IF NOT EXISTS `keycloak`;
CREATE DATABASE IF NOT EXISTS `winpkira-dev`;

# create root user and grant rights
#CREATE USER 'root'@'localhost' IDENTIFIED BY 'local';
#GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';

CREATE USER 'winra'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'winra'@'%';
