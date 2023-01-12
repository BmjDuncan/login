mkdir custom
mv mongod.conf custom
docker pull mongo
docker run -d -e MONGO_INITDB_ROOT_USERNAME='admin' -e MONGO_INITDB_ROOT_PASSWORD='goose' --name mongo -v $PWD/custom:/etc/mongo -p 27017:27017 mongo --config /etc/mongo/mongod.conf
