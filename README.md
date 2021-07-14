# DOCKER 

Docker is a tool designed to make it easier to create, deploy, and run applications by using containers. Containers allow a developer to package up an application with all of the parts it needs, such as libraries and other dependencies, and deploy it as one package.

# WORDPRESS

WordPress is a free, open-source website creation platform. On a more technical level, WordPress is a content management system (CMS) written in PHP that uses a MySQL database. In non-geek speak, WordPress is the easiest and most powerful blogging and website builder in existence today.

### Install Docker

If you don't have docker, docker-compose and docker bash autocomplete installed execute the command just below, but if your all set skip it:

```shell
bash <(curl -s https://gitlab.com/syncit-group-open-source/devops/docker-setup/-/raw/master/docker.install)
```

!Mandatory! - Logout from the current session (exit SSH) for the docker privileges to be applied properly.

To clone this repo if your not authenticated with gitlab, the easiest way to clone it is via personal token.
To acquire one please visit url: https://gitlab.com/-/profile/personal_access_tokens and generate 'read_repository' personal token.

Afterwards follow the commands printed below:

```shell
export GITLAB_USERNAME=YOUR-GITLAB-USERNAME
export GITLAB_TOKEN=YOUR-GITLAB-TOKEN
```
and
```shell
git clone https://oauth2:$GITLAB_TOKEN@gitlab.com/syncitgroup/devops/magento2-docker.git
```
```shell
docker login registry.gitlab.com -u $GITLAB_USERNAME -p $GITLAB_TOKEN
```

# WORDPRESS SETUP

### Navigate to the docker folder 
```shell
cd wordpress-docker/
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
