# nextcloud-docker
works, but not perfect

missing: .env w/ environment variables used in docker-compose.yml, should be your own anyway
```
NEXTCLOUD_HTTP_PORT=
NEXTCLOUD_PATHPREFIX=/abc //only if using traefik, my.config.php overwritewebroot needs to be the same, delete if not needed
MYSQL_ROOT_PASSWORD=
MYSQL_PASSWORD=
MYSQL_DATABASE=
MYSQL_USER=
```

## before you run
  - environment variables, as needed
  - #### change admin pw and user in docker-compose.yml
  - my.config.php:
    - trusted domains to your ip
    - overwritewebroot only if needed, else delete

## run
don't forget .env variables used in docker-compose.yml

`source .env`

`sudo docker-compose up -d --build`

#### rpi-mariadb image for raspberry pi, change to other database image per doc on [nextcloud-docker](https://github.com/nextcloud/docker) if needed


## building own image ontop of the nextcloud image with:
  ### nextcloud:
  - supervisord for cronjobs from examples@[nextcloud-docker](https://github.com/nextcloud/docker)
    - conrjob for previewgenerator plugin, needs to be installed (and generate-all)
  - my.config.php php [configuration](https://docs.nextcloud.com/server/13/admin_manual/configuration_server/config_sample_php_parameters.html?highlight=config)
  - timezone
  
  ### db:
  - myconfig.cnf mysql config

## docker-compose.yml:
if not using traefik, just delete all labels regarding traefik and the network discovery

nextcloud:
  - persistent data: data,config,apps (custom_apps)
  - traefik

db:
  - persistent data: db
  - ./config.cnf as additional configuration of mysql for better performance, probably needs changing depending on usecase
