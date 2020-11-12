#!/bin/sh

set -e

/usr/local/spark/sbin/start-slave.sh \
  -p {{ engines.spark_worker.networking.ports.worker.value }} \
  --webui-port {{ engines.spark_worker.networking.ports.dashboard.value }} \
  --properties-file {{ engines.spark_worker.container.mounts.app_files.spark_worker.container_path }}/spark.conf \
  {{ engines.spark_master.vars.url }}