# Dockered Django Template

docker-compose run app sh -c "python manage.py makemigrations"
docker-compose run app sh -c "python manage.py migrate"
openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:4096 -keyout private.key -out certificate.crt


# Dev
sqlite3 for development
docker-compose -f docker-compose.yml up --build 

# Prod
nginx
postgress
docker-compose -f docker-compose-prod.yml up --build 


# DNS

http://dev.ronwork.com:8000
https://dev.ronwork.com