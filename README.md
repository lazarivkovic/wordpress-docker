# DOCKER 

Docker is a tool designed to make it easier to create, deploy, and run applications by using containers. Containers allow a developer to package up an application with all of the parts it needs, such as libraries and other dependencies, and deploy it as one package.

# WORDPRESS

WordPress is a free, open-source website creation platform. On a more technical level, WordPress is a content management system (CMS) written in PHP that uses a MySQL database. In non-geek speak, WordPress is the easiest and most powerful blogging and website builder in existence today.

# WORDPRESS SETUP

### Navigate to the docker folder 
```shell
cd wordpress-docker-nginx/
```

### Setup docker Wordpress cluster
```shell
docker-compose -f docker-compose.yml up -d
```

### Down Wordpress cluster
```shell
docker-compose -f docker-compose.yml down
```

# DEV ENV SETUP - With phpmyadmin and dozzle

### Setup DEV ENV
```shell
docker-compose -f docker-compose-dev.yml up -d
```

### Down DEV ENV
```shell
docker-compose -f docker-compose-dev.yml down
```

# CLEAR PULL DOCKER IMAGES AND VOLUMES
```shell
docker system prune -a 
docker volume prune
```
