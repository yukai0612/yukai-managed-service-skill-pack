# Example: EKS + ArgoCD Release

## Pre-checks
```bash
kubectl get deploy -n apps
kubectl get pods -n apps -l app=<service>
kubectl describe deploy <deployment> -n apps
```

## Manifest change
```yaml
image:
  repository: 264009935095.dkr.ecr.ap-southeast-1.amazonaws.com/agroapp-uat-agroapp-<service>
  tag: <new-tag>
```

## ArgoCD validation
- App status: Synced.
- Health: Healthy.
- Deployment rollout completed.
- Ingress endpoint smoke test passed.
