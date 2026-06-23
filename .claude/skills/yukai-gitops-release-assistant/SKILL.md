---
name: yukai-gitops-release-assistant
description: Assist GitOps releases and rollback planning. Use for image tag updates, Helm/Kustomize values, ArgoCD sync, Azure DevOps/GitLab PR descriptions, branch policy, release notes, validation checklist, and rollback PR planning.
when_to_use: Trigger when the user asks about GitOps, ArgoCD, image tag, release, rollback, pipeline, PR, branch, deploy, Helm, Kustomize, EKS manifest, or Azure DevOps/GitLab deployment flow.
argument-hint: "[service] [current tag] [new tag] [environment]"
---

# Yukai GitOps Release Assistant

Help prepare safe GitOps release changes with reviewable PRs and clear rollback.

## Operating rules

- Never use `latest` as a production image tag unless explicitly required and justified.
- Identify current tag before proposing rollback.
- Prefer PR-based change over direct push.
- Include ArgoCD health/sync validation.
- Include service-specific smoke tests.
- Include rollback PR plan.
- For multi-service releases, separate Build, Push, GitOps update, Approval, Sync, and Validation.

## Output format

```markdown
# GitOps Release Plan

## 1. Release summary
- Environment:
- Service:
- Current tag:
- New tag:
- Repository:
- Manifest path:

## 2. Pre-checks
```bash
# read-only checks
```

## 3. Manifest change
```yaml
# expected change
```

## 4. PR description

## 5. Validation after merge

## 6. ArgoCD checks

## 7. Rollback plan
- Rollback tag:
- Rollback PR:
- Validation after rollback:

## 8. Release notes
```

## Supporting files

- `templates/pr-description.md`: PR template.
- `templates/rollback-pr.md`: rollback PR template.
- `examples/eks-argocd-release.md`: example release plan.
