go:
	docker-compose -f srcs/docker-compose.yml up --build
	mkdir -p /var/Data/MD
	mkdir -p /var/Data/WP
	mkdir -p /var/Data/RDS

end:
	docker-compose -f srcs/docker-compose.yml down -v
	
# --rmi all --volumes --remove-orphans && cd ..

clear: end
	docker system prune -a

re: end go