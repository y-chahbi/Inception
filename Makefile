go:
	docker-compose -f srcs/docker-compose.yml up --build
	mkdir -p /var/Data/MD
	mkdir -p /var/Data/WP
	mkdir -p /var/Data/RDS
end:
	cd srcs && docker-compose down --rmi all --volumes --remove-orphans && cd ..
clear: $(end)
	docker system prune -a
	sudo rm -rf /var/Data/MD
	sudo rm -rf /var/Data/WP
	sudo rm -rf /var/Data/RDS

re: $(end) 
	$(go)
