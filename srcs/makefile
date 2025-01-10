all:
	-mkdir -p /home/${USER}/data/wordpress
	-mkdir -p /home/${USER}/data/mariadb
	-mkdir -p /home/${USER}/data/adminer
	docker compose  -f ./srcs/docker-compose.yml up
clean :
	docker rm -f $(shell docker ps -qa)
	docker rmi -f $(shell docker images -q)
	docker volume rm  $(shell docker volume ls -q)
	rm -rf /home/${USER}/data