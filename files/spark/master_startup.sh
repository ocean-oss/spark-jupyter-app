#!/bin/sh

/usr/local/spark/bin/spark-class org.apache.spark.deploy.master.Master \
  -h {{ engines.spark.vars.spark_master_host }} \
  -p {{ engines.spark.vars.spark_master_port }} \
  --webui-port {{ engines.spark.vars.spark_master_ui_port }}
