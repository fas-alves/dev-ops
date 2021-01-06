Write-Host "Criando volume: postgres_database"
docker volume create postgres_database

Write-Host "Subindo os servicos."
docker-compose up -d --build

Start-Sleep -s 120

Write-Host "Criando topico: request-cupom-fiscal-sefaz-basico."
docker-compose exec kafka kafka-topics --create --topic request-cupom-fiscal-sefaz-basico --bootstrap-server kafka:9092 --replication-factor 1 --partitions 1

Write-Host "Criando topico: response-cupom-fiscal-sefaz-basico."
docker-compose exec kafka kafka-topics --create --topic response-cupom-fiscal-sefaz-basico --bootstrap-server kafka:9092 --replication-factor 1 --partitions 1

Write-Host "Criando topico: request-cupom-fiscal-sefaz-completo."
docker-compose exec kafka kafka-topics --create --topic request-cupom-fiscal-sefaz-completo --bootstrap-server kafka:9092 --replication-factor 1 --partitions 1

Write-Host "Criando topico: response-cupom-fiscal-sefaz-completo."
docker-compose exec kafka kafka-topics --create --topic response-cupom-fiscal-sefaz-completo --bootstrap-server kafka:9092 --replication-factor 1 --partitions 1

Write-Host "Criando topico: cupom-fiscal-dados-normalizados."
docker-compose exec kafka kafka-topics --create --topic cupom-fiscal-dados-normalizados --bootstrap-server kafka:9092 --replication-factor 1 --partitions 1

Write-Host "Criando topico: registra-notificacao-usuarios"
docker-compose exec kafka kafka-topics --create --topic registra-notificacao-usuarios --bootstrap-server kafka:9092 --replication-factor 1 --partitions 1

Write-Host "Criando topico: envia-notificacao-usuarios"
docker-compose exec kafka kafka-topics --create --topic envia-notificacao-usuarios --bootstrap-server kafka:9092 --replication-factor 1 --partitions 1