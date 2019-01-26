#!/bin/sh

cp ~/files/server.properties config/server.properties
./bin/kafka-server-start.sh config/server.properties

exec "$@"