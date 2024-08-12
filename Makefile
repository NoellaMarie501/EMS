PROJECT_NAME    = ems


#.ONESHELL: ;             recipes execute in same shell
.EXPORT_ALL_VARIABLES: ; # send all vars to shell

up: 
	docker-compose --project-name $(PROJECT_NAME) up -d

build: 
	docker-compose --project-name $(PROJECT_NAME) build

root:
	docker exec -it -u root $$(docker-compose --project-name $(PROJECT_NAME) ps -q ems) sh