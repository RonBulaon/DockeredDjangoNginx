# Dockered Django Template

This is my template for building a development environment for Python with using Django Web Framework within a Docker container.
* Comes with PostgreSQL and SQLlite3.
* Simple login features and default users.
* Reverse Proxy with HTTPS configuration.

# Local Machine
```bash
# using sqlite3 for development
docker-compose run app sh -c "python manage.py makemigrations"
docker-compose run app sh -c "python manage.py migrate"
docker-compose -f docker-compose.yml up --build 
```

# Prod (Basic)
```bash
# start with nginx and postgress
docker-compose -f docker-compose-prod.yml up --build 
```

# DNS

* http://dev.ronwork.com:8000
* https://dev.ronwork.com


# DO NOT FORGET TO CHANGE THE CERTIFICATES
```bash
# for self-signed certificates use below
openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:4096 -keyout private.key -out ce
```

# DEFAULT Users
* Superuser - admin:password
* User - user1:password - member of userGroup
* User - admin1:password - member of adminGroup
* Group - userGroup
* Group - adminGroup
  
