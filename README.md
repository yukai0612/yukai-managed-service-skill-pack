# Yukai Managed Service Skill Pack

A Claude Code skill pack for DevOps, Infra Operations, Managed Service, migration planning, incident investigation, command safety review, MOR reporting, and GitOps releases.

## Included skills

| Skill | Purpose |
|---|---|
| `yukai-infra-incident-investigator` | Analyze incidents from symptoms, logs, screenshots, and command output. Produces impact, suspected root causes, evidence checklist, fix plan, and rollback. |
| `yukai-migration-risk-checker` | Build migration risk plans for on-prem, cloud, Kubernetes, SQL, storage, NFS, GitOps, and network changes. |
| `yukai-command-safety-reviewer` | Explain commands before running them, classify risk, suggest read-only checks, safer alternatives, validation, and rollback. |
| `yukai-managed-service-runbook` | Generate Managed Service runbooks with prerequisites, procedure, validation, rollback, escalation, and evidence. |
| `yukai-mor-report-builder` | Build Monthly Operations Review reports from ticket summaries, incidents, SLA data, and action items. |
| `yukai-gitops-release-assistant` | Assist GitOps releases: tag review, manifest update plan, PR text, validation, and rollback PR plan. |

## Install for Claude Code

Copy the skill folders into your Claude Code personal skill directory:

```bash
mkdir -p ~/.claude/skills
cp -R .claude/skills/* ~/.claude/skills/
```

Or keep them inside a project repo:

```bash
mkdir -p your-repo/.claude/skills
cp -R .claude/skills/* your-repo/.claude/skills/
```

## Suggested usage

```text
/yukai-command-safety-reviewer explain this command before I run it: kubectl delete pod api-xxx -n apps
```

```text
Use yukai-infra-incident-investigator. Here is the Hyper-V cluster error and CSV output...
```

```text
Use yukai-migration-risk-checker to review this SQL 2016 to SQL 2022 migration plan.
```

## Design principles

- Prefer read-only evidence collection before any change.
- Separate observation, inference, and recommendation.
- Always include rollback and validation.
- Do not invent facts from missing logs or configs.
- Mark production-impacting actions clearly.
- Use customer-facing wording when asked for reports or MOR/MoM content.

## Notes

These skills are written for infrastructure and operations workflows. Test and adapt them before using in production environments.
