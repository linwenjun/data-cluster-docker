#!/bin/sh

cp conf/zoo_sample.cfg conf/zoo.cfg
./bin/zkServer.sh start-foreground