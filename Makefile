run-pg:
	docker rm pg1 && \
	docker run --name pg1 -p 5432:5432 -e POSTGRES_PASSWORD=postgres  --net custom --hostname pg1.local -d postgres

run-pg-admin:
	docker rm pg-admin1 && \
	docker run -p 8080:80 --name pg-admin1 \
	--hostname pgadmin.local --net custom \
    -e 'PGADMIN_DEFAULT_EMAIL=rohitj299@gmail.com' \
    -e 'PGADMIN_DEFAULT_PASSWORD=rojojojo' \
    -d dpage/pgadmin4

run-admin:
	docker rm pg-admin1 && \
	docker run -p 8080:80 --name pg-admin1 \
	--hostname pgadmin.local --net custom \
    -e 'PGADMIN_DEFAULT_EMAIL=rohitj299@gmail.com' \
    -e 'PGADMIN_DEFAULT_PASSWORD=rojojojo' \
    -d dpage/pgadmin4
    

