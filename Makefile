run-services:
	docker-compose up --scale nginx=2 --scale httpd=2 nginx httpd

run-envoy:
	docker-compose up envoy
