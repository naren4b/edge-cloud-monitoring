# victoria-metrics-cluster 
 - Get the latest helm chart: https://github.com/VictoriaMetrics/helm-charts/tree/master/charts/victoria-metrics-cluster
 - Adjust the values (if any update) if any to values-naren-default.yaml,values-naren-production.yaml

# Test the helm Template
```
 helm template . -f values.yaml --debug -n monitoring --name-template=vm > out.txt
 export KUBECONFIG=dev-infra-kube-config
 k apply -f out.txt
```

# Grafana Setup 
datasource: 
``` 
  http://vm-victoria-metrics-cluster-vmselect:8481/select/0/prometheus/
```


# Prometheus Update 
```
    remote_write:
       - url: http://vm-victoria-metrics-cluster-vminsert:8480/insert/0/prometheus/api/v1/write

```