#Container Mysql
docker build -t mysql-image -f api/db/Dockerfile .
docker run -d -v $(pwd)/api/db/data:/var/lib/mysql --rm --name mysql-container mysql-image
docker exec -i mysql-container mysql -uroot -pteste123 < api/db/script.sql
docker exec -it mysql-container /bin/bash
	mysql -uroot -pteste123
	use databaseteste
	select * from products;

#Container Node
docker build -t node-image -f api/Dockerfile .
docker run -d -v $(pwd)/api:/home/node/app -p 9001:9001 --link mysql-container --rm --name node-container node-image

#Container PHP
docker build -t php-image -f website/Dockerfile .
ocker run -d -v $(pwd)/website:/var/www/html -p 8888:80 --link node-container --rm --name php-container php-image

#Com Docker compose
docker-compose up -d #Start nos containers
docker-compose stop #Parar os containers