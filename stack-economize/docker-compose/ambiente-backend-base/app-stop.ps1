Write-Host "Parando os servicos."

docker-compose down

Write-Host "Removendo volume: postgres_database"

docker volume rm postgres_database