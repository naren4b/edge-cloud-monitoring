# Voting App takes the vote from each client and shows up result as well 

# Set up the kind cluster 
```kind create cluster --name=words-smith-app --config=kind-config.yaml```

# Install Ingress 
```kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/kind/deploy.yaml ```

# Helm install 
```helm template app/. | kubectl apply -f -```

# Set the context 
```kubectl  config set-context --current --namespace=monitoring```

# Update the etc folder 
```127.0.0.1 prometheus.naren.com```
```127.0.0.1 pushgateway.naren.com```

# To send metrics to push gateway 
```
echo "test_cpu_utilization 20.25" | curl -v --data-binary @- http://pushgateway.naren.com/metrics/job/my_custom_metrics/instance/localhost:9000/test/cpu


echo "http_request_counter 10" | curl -v --data-binary @- http://pushgateway.naren.com/metrics/job/http_request_metrics/instance/localhost:8080/code/200

```
# Test the app 
1. pushgateway url : http://pushgateway.naren.com
2. pushgateway url : http://prometheus.naren.com




