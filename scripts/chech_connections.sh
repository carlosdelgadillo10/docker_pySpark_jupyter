# Probando PostgreSQL
pg_isready -h localhost -p 5432

# Probando MongoDB
echo 'db.runCommand({ping:1})' | mongo --host localhost:27017

# Probando Redis
redis-cli -h localhost ping

