go:
	sudo mkdir -p /var/Data/MD
	sudo mkdir -p /var/Data/WP
	sudo mkdir -p /var/Data/RDS
	docker-compose -f srcs/docker-compose.yml up --build

end:
	docker-compose -f srcs/docker-compose.yml down -v
	
# --rmi all --volumes --remove-orphans && cd ..

clear: end
	docker system prune -a

re: end go