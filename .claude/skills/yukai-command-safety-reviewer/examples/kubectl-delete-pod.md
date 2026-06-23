# Example: kubectl delete pod

## Command
```bash
kubectl delete pod api-xxx -n apps
```

## Verdict
- Risk: Yellow to Orange depending on replicas and production impact.
- State-changing: Yes.
- Meaning: Deletes one pod. Kubernetes may recreate it if managed by a Deployment/ReplicaSet.

## Pre-checks
```bash
kubectl get pod api-xxx -n apps -o wide
kubectl get deploy,rs -n apps | grep api
kubectl describe pod api-xxx -n apps
kubectl logs api-xxx -n apps --tail=100
```

## Safer action
If the goal is restart, prefer rollout restart for the Deployment after checking replica count:
```bash
kubectl rollout restart deployment/<deployment-name> -n apps
kubectl rollout status deployment/<deployment-name> -n apps
```
