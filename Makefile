#!make

help: _header
	${info }
	@echo Opciones:
	@echo -----------------------------
	@echo start / bd
	@echo stop
	@echo clean
	@echo -----------------------------

_urls: _header
	${info }
	@echo Sitios disponibles:
	@echo -----------------------------
	@echo [bWAPP] http://localhost:8000
	@echo -----------------------------

_header:
	@echo -----
	@echo bWAPP
	@echo -----

_start_command:
	@docker compose up -d

start: _start_command _urls

bd:
	@docker compose exec website curl -s http://localhost/install.php?install=yes > /dev/null && echo "INFO: Base de datos creada." || echo "ERROR: No se ha podido crear la base de datos..."

stop:
	@docker compose stop

clean:
	@docker compose down -v --remove-orphans
