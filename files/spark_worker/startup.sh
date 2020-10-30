#!/bin/sh

set -e

/usr/local/spark/sbin/start-slave.sh \
  -p {{ engines.spark_worker.vars.port }} \
  --webui-port {{ engines.spark_worker.vars.dashboard_port }} \
  --properties-file {{ engines.spark_worker.orchestrator.container.mounts.app_files.spark_worker.container_path }}/spark.conf \
  {{ engines.spark_master.vars.url }}