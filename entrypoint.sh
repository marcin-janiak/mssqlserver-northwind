#!/bin/bash
./import-data.sh "${SA_PASSWORD}" "${DEFERRED_SECONDS}" & /opt/mssql/bin/sqlservr