#!/bin/sh

/etc/init.d/ssh start
ssh -o "StrictHostKeyChecking no" localhost
ssh -o "StrictHostKeyChecking no" 0.0.0.0

./bin/hdfs namenode -format -force
./sbin/start-dfs.sh
./sbin/start-yarn.sh

exec "$@"