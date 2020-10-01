#!/bin/sh

/usr/local/spark/bin/spark-class org.apache.spark.deploy.worker.Worker \
  -p {{ vars.spark_worker_port }} \
  --webui-port {{ vars.spark_worker_ui_port }} \
  spark://{{ vars.spark_master_host }}:{{ vars.spark_master_port }}