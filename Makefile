go:
	sudo mkdir -p /home/ychahbi/data/MD
	sudo mkdir -p /home/ychahbi/data/WP
	sudo mkdir -p /home/ychahbi/data/RDS
	docker-compose -f srcs/docker-compose.yml up --build

end:
	docker-compose -f srcs/docker-compose.yml down -v
	
# --rmi all --volumes --remove-orphans && cd ..

clear: end
	docker system prune -a

re: end go