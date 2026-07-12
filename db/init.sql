CREATE ROLE koja_trust LOGIN;
CREATE ROLE koja_password LOGIN PASSWORD 'koja_password_secret';
CREATE ROLE koja_scram LOGIN PASSWORD 'koja_scram_secret';

CREATE DATABASE koja_test;
GRANT ALL ON DATABASE koja_test TO koja_trust, koja_password, koja_scram;

\connect koja_test
GRANT ALL ON SCHEMA public TO koja_trust, koja_password, koja_scram;
