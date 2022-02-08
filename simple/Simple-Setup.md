# Set up 
```
cd server 
docker build -t prom-server:v1 .
docker run -d --rm  --network host --name vm  -v $pwd/victoria-metrics-data:/victoria-metrics-data victoriametrics/victoria-metrics
docker run -d --rm  --network host --name=grafana grafana/grafana
docker run -d --rm --network host --name node-exporter --pid="host"  -v "/:/host:ro,rslave" --path.rootfs=/host  quay.io/prometheus/node-exporter:latest 
docker run -d --rm --network host --name=prom-server prom-server:v1


cd edge
docker build -t prom-edge:v1 .
docker run -d --rm --network host --name=app naren4b/metric-simulator --mc=5 --ac=1
docker run -d --rm --network host --name=prom-edge1 prom-edge:v1
```

#### Note: 

Grafana data source connection: 
```
create the prometehus data-source : <http://ip:8428>
netstat -ant | grep 8080 | grep EST | wc -l
```
