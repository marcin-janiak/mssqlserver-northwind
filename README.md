# mssqlserver-northwind 
[![HitCount](http://hits.dwyl.com/marcin-janiak/mssqlserver-northwind.svg)](http://hits.dwyl.com/marcin-janiak/mssqlserver-northwind)
[![](https://images.microbadger.com/badges/version/marcinjaniak/mssqlserver-northwind.svg)](https://microbadger.com/images/marcinjaniak/mssqlserver-northwind "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/marcinjaniak/mssqlserver-northwind.svg)](https://microbadger.com/images/marcinjaniak/mssqlserver-northwind "Get your own image badge on microbadger.com")

MS SQL Server with Northwind DB initialized.

The image is intended to be used for rapid demo apps development.

## About image
Image is based on the official [MS SQL Server](https://hub.docker.com/_/microsoft-mssql-server) with tag 2019-latest.

It initializes with Northwind DB data after fixed seconds (default 30s)

## How to use this Image

Please refer to [MS SQL Server README](https://hub.docker.com/_/microsoft-mssql-server)

Additionally, you can use additional env parameter
DEFERRED_SECONDS (default 30) to set when DB will be seeded.

The default password for SA user:
```P4ssw0rd```

```
docker run -e 'DEFERRED_SECONDS=30' -e 'SA_PASSWORD=P4ssw0rd' -p 1433:1433  marcinjaniak/mssqlserver-northwind:latest
```