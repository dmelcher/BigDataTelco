CREATE USER 'druser'@'localhost' IDENTIFIED BY 'drpassword';
GRANT EXECUTE, SELECT ON cdr.* TO 'druser'@'localhost';