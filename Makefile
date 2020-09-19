run:
	docker-compose up --scale nginx=2 --scale httpd=2
