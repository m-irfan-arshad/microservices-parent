CREATE DATABASE auth-service-db;
CREATE DATABASE users-service-db;

-- CREATE USER admin_post WITH ENCRYPTED PASSWORD 'admin';

GRANT ALL PRIVILEGES ON DATABASE auth_db, users_db TO admin;

