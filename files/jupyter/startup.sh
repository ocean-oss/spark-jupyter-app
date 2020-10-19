#!/bin/sh

set -e

start-notebook.sh \
  --NotebookApp.token="{{ engines.jupyter.vars.token }}" \
  --NotebookApp.port={{ engines.jupyter.vars.port }} \
  --no-browser