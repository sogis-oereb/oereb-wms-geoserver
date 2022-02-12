# oereb-wms-geoserver

## Build

```
docker build -t sogis/oereb-wms-geoserver:2 -t sogis/oereb-wms-geoserver:latest .
```

## Develop

Use `sogis/docker-geoserver` for developing styles and configuration:

```
docker run -p 8080:8080 -v $PWD/data_dir:/usr/local/geoserver/data sogis/geoserver:2.20.2
```

Use same Geoserver version for developing and production!
