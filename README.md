# Dockered Django Template

This is my template for building a development environment for Python with using Django Web Framework within a Docker container.
* Comes with PostgreSQL and SQLlite3.
* Simple login features and default users.
* Reverse Proxy with HTTPS configuration.

```
docker-compose run app sh -c "python manage.py makemigrations"
docker-compose run app sh -c "python manage.py migrate"
```

# Dev
```
sqlite3 for development
docker-compose -f docker-compose.yml up --build 
```

# Prod
```
nginx
postgress
docker-compose -f docker-compose-prod.yml up --build 
```

# DNS

* http://dev.ronwork.com:8000
* https://dev.ronwork.com


# DO NOT FORGET TO CHANGE THE CERTIFICATES
```
# for self-signed certificates use below
openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:4096 -keyout private.key -out ce
```

# DEFAULT Users
* Superuser - admin:password
* User - user1:password - member of userGroup
* User - admin1:password - member of adminGroup
* Group - userGroup
* Group - adminGroup
  
