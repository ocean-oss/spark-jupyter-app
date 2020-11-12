#!/bin/sh

set -e

start-notebook.sh \
  --NotebookApp.token="{{ engines.jupyter.vars.token }}" \
  --NotebookApp.port={{ engines.jupyter.networking.ports.jupyter.value }} \
  --no-browser