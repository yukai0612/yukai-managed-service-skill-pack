# GitOps PR Description Template

## Summary
Update `<service>` image tag from `<current-tag>` to `<new-tag>` in `<environment>`.

## Change Type
- [ ] Application release
- [ ] Configuration change
- [ ] Rollback
- [ ] Hotfix

## Files Changed

## Validation Before Merge
- [ ] Image exists in registry
- [ ] Manifest syntax checked
- [ ] Target branch is correct
- [ ] Reviewer assigned
- [ ] Rollback tag identified

## Validation After Merge
- [ ] ArgoCD sync completed
- [ ] Application health is Healthy
- [ ] Pod rollout completed
- [ ] Service endpoint smoke test passed
- [ ] Monitoring checked

## Rollback Plan
Revert image tag from `<new-tag>` to `<current-tag>` and create rollback PR.
