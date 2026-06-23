# Platform Migration Checklist

## Kubernetes / EKS
- Namespace exists.
- ServiceAccount, Role, RoleBinding checked.
- Secrets and ConfigMaps recreated for correct environment.
- Image registry access tested.
- Ingress/ALB annotations reviewed.
- PVC/EFS/NFS mount tested.
- DNS and certificate checked.
- Readiness/liveness probes pass.
- ArgoCD sync status healthy.

## SQL Server
- Version compatibility checked.
- Database backup verified.
- Logins and SIDs migrated.
- SQL Agent jobs migrated.
- Linked servers reviewed.
- SSRS/SSIS dependencies reviewed.
- Application connection string updated.
- Rollback backup restore tested.

## Storage / NFS / EFS
- Data size and growth rate measured.
- File ownership and permission preserved.
- Locking behavior tested.
- Mount options documented.
- Performance baseline captured.
- Cutover sync method tested.

## Network / DMZ / Firewall
- Source/destination/port matrix completed.
- DNS TTL reduced before cutover.
- Certificate CN/SAN checked.
- Reverse proxy and API gateway path rules reviewed.
- Logging enabled on critical flows.

## GitOps / CI-CD
- Branch protection enabled.
- PR review required.
- Image tag policy defined.
- Rollback tag known.
- ArgoCD health and sync validated.
