#!/bin/bash
sleep "${2}s"
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $1 -i /usr/share/northwind.sql