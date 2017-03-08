-- This SQL command will terminate all open connections to the selected database.
-- Replace database_name with the name of your database

SELECT pg_terminate_backend(pg_stat_activity.pid) FROM pg_stat_activity WHERE datname = 'database_name' AND pid <> pg_backend_pid();
