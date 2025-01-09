all:
	-mkdir -p /home/${USER}/data/wordpress
	-mkdir -p /home/${USER}/data/mariadb
	-mkdir -p /home/${USER}/data/adminer
	docker compose  -f ./srcs/docker-compose.yml up
clean :
	docker system prune -a -f
	docker volume prune -a -f
	rm -rf /home/${USER}/data