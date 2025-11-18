

drop database if exists git01_proceduralworks_org;
drop database if exists git02_proceduralworks_org;

CREATE DATABASE git01_proceduralworks_org CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci';
CREATE DATABASE git02_proceduralworks_org CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci';

DROP USER 'gitea'@'%';

CREATE USER 'gitea'@'%' IDENTIFIED BY '0123456789';

GRANT ALL PRIVILEGES ON git01_proceduralworks_org.* TO 'gitea'@'%';
GRANT ALL PRIVILEGES ON git02_proceduralworks_org.* TO 'gitea'@'%';

FLUSH PRIVILEGES;