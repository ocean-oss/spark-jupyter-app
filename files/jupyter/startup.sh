#!/bin/sh

start.sh jupyter lab --NotebookApp.token="" --NotebookApp.password="" --NotebookApp.port={{ engines.jupyter.vars.jupyter_port }} --no-browser