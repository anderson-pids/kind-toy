# kind-toy

- Criar cluster
```bash
kind create cluster --config=kind.yaml #criar cluster
kubectl cluster-info --context kind-cluster-toy #set do kubectl para acesso ao cluster
kubectl get nodes #quantidade de nodes
```

- Configurar objetos k8s
```bash
kubectl apply -f k8s/pod.yaml
kubectl apply -f k8s/replicaset.yaml
kubectl apply -f k8s/deployment.yaml
```
- Port-forward's
```bash
kubectl port-forward pod/goserver 8080:8080 #port-forward para pod
kubectl port-forward svc/goserver 8080:8080 #port-forward para service
kubectl proxy --port=9000 #proxy para acessar API K8S
```
- Rollout e Revisions
```bash
kubectl rollout history deployment goserver
kubectl rollout history deployment goserver --to-revision=3 #rollout para revisao especifica
```

