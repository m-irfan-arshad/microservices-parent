CREATE DATABASE auth_service_db;
CREATE DATABASE users_service_db;

-- CREATE USER admin_post WITH ENCRYPTED PASSWORD 'admin';

GRANT ALL PRIVILEGES ON DATABASE auth_service_db, users_service_db TO admin;

