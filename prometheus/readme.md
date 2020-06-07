# Docker

Prometheus server, alert manager, Web UI, PromDash

## Prometheus server
- [Docker hub](https://hub.docker.com/r/prom/prometheus)
- There are both arm and arm64 versions for Raspberry Pi.
- No bash: uses `bin/sh` i.e. `docker-compose exec <prometheus> /bin/sh`
- Config file in `/etc/prometheus/prometheus.yml`
- Storage volume `prometheus`
- targets are discovered via service discovery or static configuration


### Dockerfile
```Dockerfile
# Default settings
VOLUME /prometheus
ENTRYPOINT /bin/prometheus 
CMD ["--config.file=/etc/prometheus/prometheus.yml", "--storage.tsdb.path=/prometheus", "--web.console.libraries=/usr/share/prometheus/console_libraries", "--web.console.templates=/usr/share/prometheus/consoles"]
```