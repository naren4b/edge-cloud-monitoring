# Voting App takes the vote from each client and shows up result as well 

# Set up the kind cluster 
```kind create cluster --name=k8s-monitoring --config=kind-config.yaml```

# Install Ingress 
```kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/kind/deploy.yaml```

# Helm install 
```helm template app/. | kubectl apply -f -```

# Set the context 
```kubectl  config set-context --current --namespace=monitoring```

# Update the etc folder 
```127.0.0.1 prometheus.naren.com```
```127.0.0.1 grafana.naren.com```
```127.0.0.1 alertmanager.naren.com```
```127.0.0.1 karma.naren.com```
```127.0.0.1 pushgateway.naren.com ```
```127.0.0.1 telegraf-srv.naren.com```

# Test the app 
1. voting-app url : http://voting-app.naren.com
2. result-app url : http://result-app.naren.com



