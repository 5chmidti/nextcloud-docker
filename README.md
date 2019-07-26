# nextcloud-docker
missing: .env w/ environment variables used in docker-compose.yml

## run
don't forget .env variables used in docker-compose.yml

`source .env`

`sudo docker-compose up -d --build`

#### rpi-mariadb image for raspberry pi, change to other database image per doc on [nextcloud-docker](https://github.com/nextcloud/docker) if needed


building own image ontop of the nextcloud image with:
  - supervisord for cronjobs from examples@[nextcloud-docker](https://github.com/nextcloud/docker)
  - my.config.php php [configuration](https://docs.nextcloud.com/server/13/admin_manual/configuration_server/config_sample_php_parameters.html?highlight=config)
  - timezone
  
## composing container:

nextcloud:
  - persistent data: data,config,apps (custom_apps)
  - traefik

db:
  - persistent data: db
  - ./config.cnf as additional configuration of mysql for better performance, probably needs changing depending on usecase
