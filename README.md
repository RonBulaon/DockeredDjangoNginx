# Dockered Django Template

```bash
docker-compose -f docker-compose-test.yml up --build          # withOUT proxy
docker-compose -f docker-compose-prod.yml up --build          # WITH proxy
```

docker-compose run app sh -c "python manage.py makemigrations"
docker-compose run app sh -c "python manage.py migrate"