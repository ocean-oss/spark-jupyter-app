#!/bin/sh

set -e

/usr/local/spark/sbin/start-slave.sh \
  {{ engines.spark-master.vars.url }} \
  -p {{ engines.spark-worker.vars.port }} \
  --webui-port {{ engines.spark-worker.vars.dashboard_port }} \
  --properties-file {{ engines.spark-worker.orchestrator.container.mounts.engine }}/spark.conf