# Start the Server 
```
cd server
# docker-compose -p <name> up -d
docker-compose -p central up -d
```

# Start the Edges 

```
cd edge
bash start.sh

```

# Clean up Server

```
cd server
# docker-compose -p <name> down
docker-compose -p central down

```
# Clean up Edge
```
cd edge
bash stop.sh 
```


# URLs to check for 
- [Grafana Edge Metric ](http://localhost:3000/d/RRXqbQ9Mz/up?orgId=1&refresh=5s) 
  admin/admin

- [Victoria Metrics](http://localhost:3000/d/wNf0q_kZk/victoriametrics)

- [Prometheus](http://localhost:9090/targets)

- [Victoria Metrics](http://localhost:8428/metrics)

# Docker 
```
docker ps -a
docker logs <container-name> 
```