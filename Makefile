go:
	docker-compose -f srcs/docker-compose.yml up --build
	mkdir -p /var/Data/MD
	mkdir -p /var/Data/WP
off:
	cd srcs && docker-compose down --rmi all --volumes --remove-orphans 
clear: $(off)
	docker system prune -a
