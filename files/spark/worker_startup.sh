#!/bin/sh

set -e

/usr/local/spark/sbin/start-master.sh spark://{{ engines.spark.vars.spark_master_url }} \
  -p {{ engines.spark.vars.spark_worker_port }} \
  --webui-port {{ engines.spark.vars.spark_worker_ui_port }}