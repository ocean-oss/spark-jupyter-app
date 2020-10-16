#!/bin/sh

set -e

start-notebook.sh \
  --NotebookApp.token="{{ engines.jupyter.vars.jupyter_token }}" \
  --NotebookApp.port={{ engines.jupyter.vars.jupyter_port }} \
  --no-browser