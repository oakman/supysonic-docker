#!/bin/bash

# Start Gunicorn processes
echo Starting Supysonic via Gunicorn.
exec gunicorn app \
    --name supysonic \
    --bind 0.0.0.0:8000 \
    --workers ${WORKERS:-4} \
    --timeout ${TIMEOUT:-180}
    --log-level=info