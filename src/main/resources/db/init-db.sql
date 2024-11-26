CREATE ROLE avenirs_referentiels_admin_role SUPERUSER;
CREATE ROLE avenirs_referentiels_admin PASSWORD '9MyOyb33L3-' NOSUPERUSER CREATEDB CREATEROLE INHERIT LOGIN;
GRANT avenirs_referentiels_admin_role to avenirs_referentiels_admin;

CREATE DATABASE avenirs_referentiels OWNER avenirs_referentiels_admin;
GRANT ALL PRIVILEGES ON DATABASE avenirs_referentiels TO avenirs_referentiels_admin_role;
\c avenirs_referentiels
CREATE SCHEMA IF NOT EXISTS dev AUTHORIZATION avenirs_referentiels_admin;



