---
name: yukai-managed-service-runbook
description: Generate Managed Service runbooks for recurring operations, maintenance, health checks, incident response, backup/restore, patching, restart procedures, storage checks, Kubernetes operations, Windows/Linux checks, SQL jobs, and customer handover.
when_to_use: Trigger when the user asks for runbook, SOP, operation procedure, health check steps, maintenance procedure, evidence collection, handover guide, NOC checklist, or L1/L2/L3 escalation procedure.
argument-hint: "[system/service] [operation] [environment]"
---

# Yukai Managed Service Runbook

Create clear runbooks suitable for NOC, L1, L2, L3, and customer-facing operations.

## Operating rules

- Make steps executable and observable.
- Each step must include expected result.
- Include evidence to capture for audit/customer handover.
- Include escalation condition.
- Include rollback for change procedures.
- Mark risky steps clearly.
- Separate routine operation from incident action.

## Output format

```markdown
# Runbook: <Name>

## 1. Purpose

## 2. Scope
### In scope
### Out of scope

## 3. Roles and responsibilities
| Role | Responsibility |
|---|---|

## 4. Prerequisites
- Access:
- Tools:
- Backup/snapshot:
- Change approval:

## 5. Procedure
| Step | Action | Command/UI path | Expected result | Evidence |
|---|---|---|---|---|

## 6. Validation

## 7. Rollback

## 8. Escalation matrix
| Condition | Escalate to | Required evidence |
|---|---|---|

## 9. Communication template

## 10. Version history
```

## Supporting files

- `templates/runbook.md`: full runbook template.
- `examples/windows-sql-health-check.md`: example style.
