#!/bin/bash
if $PRODUCTION; then
    poetry run uvicorn src.main:app --host=0.0.0.0 --port 80
else
    poetry run uvicorn src.main:app --reload --host=0.0.0.0 --port 80
fi