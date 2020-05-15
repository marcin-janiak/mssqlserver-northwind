# mssqlserver-northwind 
[![HitCount](http://hits.dwyl.com/marcin-janiak/mssqlserver-northwind.svg)](http://hits.dwyl.com/marcin-janiak/mssqlserver-northwind)
[![](https://images.microbadger.com/badges/version/marcinjaniak/mssqlserver-northwind.svg)](https://microbadger.com/images/marcinjaniak/mssqlserver-northwind "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/marcinjaniak/mssqlserver-northwind.svg)](https://microbadger.com/images/marcinjaniak/mssqlserver-northwind "Get your own image badge on microbadger.com")
MS SQL Server with Northwind DB initialized.


## About image
Image is based on official [MS SQL Server](https://hub.docker.com/_/microsoft-mssql-server) with tag 2019-latest.

It initializes with Northwind DB data after fixed seconds (default 30s)

## How to use this Image

Please refer to [MS SQL Server README](https://hub.docker.com/_/microsoft-mssql-server)

Additionaly you can use additional env parameter
DEFERRED_SECONDS (default 30) to set when DB will be seeded.

Default password for SA user:
```P4ssw0rd```

```
docker run -e 'DEFERRED_SECONDS=30' -e 'SA_PASSWORD=yourStrong(!)Password' -p 1433:1433  marcinjaniak/mssqlserver-northwind:latest
```

Feel free to post issues and contrib at [github repository](https://github.com/marcin-janiak/mssqlserver-northwind)