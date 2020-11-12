#!/bin/sh

set -e

/usr/local/spark/sbin/start-master.sh \
  -h {{ engines.spark_master.vars.private_ip }} \
  -p {{ engines.spark_master.networking.ports.master.value }} \
  --webui-port {{ engines.spark_master.networking.ports.dashboard.value }} \
  --properties-file {{ engines.spark_master.container.mounts.app_files.spark_master.container_path }}/spark.conf