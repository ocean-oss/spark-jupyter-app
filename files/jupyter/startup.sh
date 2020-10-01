#!/bin/sh

start.sh jupyter lab \
  --NotebookApp.token="" \
  --NotebookApp.password="" \
  --NotebookApp.port={{ vars.jupyter_port }} \
  --no-browser