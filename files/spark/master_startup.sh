#!/bin/sh

/usr/local/spark/bin/spark-class org.apache.spark.deploy.master.Master \
  -h {{ vars.spark_master_host }} \
  -p {{ vars.spark_master_port }} \
  --webui-port {{ vars.spark_master_ui_port }}
