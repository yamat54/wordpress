DOCKER_CMD := docker compose -f docker-compose.yml
WP_CMD := ${DOCKER_CMD} exec wordpress
DB_CMD := ${DOCKER_CMD} exec db

wp/console:
	${WP_CMD} bash

db/console:
	${DB_CMD} mysql -u root -psomewordpress
