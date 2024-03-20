#!/bin/bash

ENV_FILE=.env

ERROR_MISSING_ENVIRONMENT_VARIABLE=1
ERROR_MISSING_ENV_FILE=2
# ┌──────────────────────────────────────────────────────────────┐
# │   Check inputs parameters (from environment variables)      │
# └──────────────────────────────────────────────────────────────┘

if [[ ! -f "$ENV_FILE" ]]; then
  echo "[ERROR] File $ENV_FILE does not exist"
  exit $ERROR_MISSING_ENV_FILE
fi

if [ "$(grep -c "HOST" $ENV_FILE)" -eq 0 ]; then
  echo "[ERROR] Missing HOST environment variable in file $ENV_FILE"
  exit $ERROR_MISSING_ENVIRONMENT_VARIABLE
fi

docker compose up -d