#!/bin/sh

set -e

/usr/local/spark/sbin/start-master.sh \
  -h {{ engines.spark.vars.spark_master_host }} \
  -p {{ engines.spark.vars.spark_master_port }} \
  --webui-port {{ engines.spark.vars.spark_master_ui_port }}
