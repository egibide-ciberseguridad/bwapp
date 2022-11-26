help:
	@echo Opciones:
	@echo -------------------
	@echo start
	@echo stop
	@echo clean
	@echo -------------------

start:
	@docker-compose up -d

stop:
	@docker-compose stop

clean:
	@docker-compose down -v --remove-orphans
