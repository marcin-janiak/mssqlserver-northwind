FROM mcr.microsoft.com/mssql/server:2019-latest
LABEL maintainer="Marcin Janiak"

ENV ACCEPT_EULA="Y"
ENV SA_PASSWORD="P4ssw0rd"
ENV DEFERRED_SECONDS=30
ENV MSSQL_PID="Express"
ENV PATH=$PATH:/opt/mssql-tools/bin

COPY northwind.sql /usr/share/northwind.sql
COPY entrypoint.sh .
COPY import-data.sh .

EXPOSE 1433

ENTRYPOINT ["sh", "/entrypoint.sh", "--SA_PASSWORD $SA_PASSWORD", "--DEFERRED_SECONDS $DEFERRED_SECONDS"]

