pytest src/test_unit.py
sudo docker-compose down -v
sudo docker-compose up -d
./wait_for_https.sh
pytest src/test_system.py
