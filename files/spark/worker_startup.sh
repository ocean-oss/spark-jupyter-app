#!/bin/sh

/usr/local/spark/bin/spark-class org.apache.spark.deploy.worker.Worker \
  -p {{ engines.spark.vars.spark_worker_port }} \
  --webui-port {{ engines.spark.vars.spark_worker_ui_port }} \
  spark://{{ engines.spark.vars.spark_master_host }}:{{ engines.spark.vars.spark_master_port }}