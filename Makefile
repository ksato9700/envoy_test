run-services:
	docker-compose up --scale nginx=2 --scale httpd=2 nginx httpd

run-envoy:
	docker-compose up envoy

run-servers:
	docker-compose up --scale nginx=2 --scale httpd=2

test:
	curl -H'Host: httpd.local' 127.0.0.1
	curl -H'Host: nginx.local' 127.0.0.1
