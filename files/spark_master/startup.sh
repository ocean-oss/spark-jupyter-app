#!/bin/sh

set -e

/usr/local/spark/sbin/start-master.sh \
  -h {{ engines.spark_master.vars.private_ip }} \
  -p {{ engines.spark_master.vars.port }} \
  --webui-port {{ engines.spark_master.vars.dashboard_port }} \
  --properties-file {{ engines.spark_master.orchestrator.container.mounts.files.spark_master.container_path }}/spark.conf