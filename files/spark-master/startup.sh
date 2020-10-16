#!/bin/sh

set -e

/usr/local/spark/sbin/start-master.sh \
  -h {{ engines.spark-master.vars.private_ip }} \
  -p {{ engines.spark-master.vars.port }} \
  --webui-port {{ engines.spark-master.vars.dashboard_port }}
