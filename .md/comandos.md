
# Entrar no postgres
docker exec -it pg-todolist bash

# Construir a imagem
docker build -t todolist-app:0.0.0 .

# criar a network
docker network create todolist-network

# Executar a imagem
docker run --name todolist-app -dp 3000:3000 --network todolist-network --env-file .env todolist-app:0.0.0