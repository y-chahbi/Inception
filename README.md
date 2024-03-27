# Inception 


delete all containers :: docker system prune -a

start : docker-compose -f docker-compose.yml up --build
stop : docker-compose down --rmi all --volumes --remove-orphans