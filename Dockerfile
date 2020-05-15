FROM mcr.microsoft.com/mssql/server:2019-latest
LABEL maintainer="Marcin Janiak"

ENV ACCEPT_EULA="Y"
ENV SA_PASSWORD="P4ssw0rd"
ENV DEFERRED_SECONDS=30
ENV MSSQL_PID="Express"
ENV PATH=$PATH:/opt/mssql-tools/bin

COPY northwind.sql /usr/share/northwind.sql
EXPOSE 1433
COPY entrypoint.sh .
COPY import-data.sh .
RUN chmod +x /entrypoint.sh
RUN chmod +x /import-data.sh

ENTRYPOINT ./entrypoint.sh --SA_PASSWORD "${SA_PASSWORD}" --DEFERRED_SECONDS "${DEFERRED_SECONDS}"

