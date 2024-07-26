all:
	sudo docker-compose -f srcs/docker-compose.yml up -d --build

go:
	sudo mkdir -p /home/ychahbi/data/MD
	sudo mkdir -p /home/ychahbi/data/WP
	sudo mkdir -p /home/ychahbi/data/RDS
	sudo docker-compose -f srcs/docker-compose.yml up --build


end:
	sudo docker-compose -f srcs/docker-compose.yml down

clear: end
	sudo docker system prune -a

re: end go