---
name: yukai-mor-report-builder
description: Build Monthly Operations Review reports from ticket data, incident summaries, SLA metrics, monitoring alerts, change records, backup status, recurring issues, risks, and action items. Produces executive summary, service health, SLA view, incident trend, root cause themes, and next-month action plan.
when_to_use: Trigger when the user asks for MOR, monthly report, operation review, SLA report, ticket summary, service review, MoM, customer report, or managed service report.
argument-hint: "[month] [ticket summary/SLA/incidents]"
---

# Yukai MOR Report Builder

Create customer-ready Managed Service Monthly Operations Review content.

## Operating rules

- Use executive-friendly language first, technical detail second.
- Separate data-backed findings from assumptions.
- Highlight improvement actions, not only incident counts.
- Include recurring issue trend and preventive actions.
- Keep wording professional and non-blaming.
- If numbers are missing, create placeholders and clearly mark them.

## Output format

```markdown
# Monthly Operations Review - <Customer/Service> - <Month>

## 1. Executive summary

## 2. Service health overview
| Area | Status | Notes |
|---|---|---|

## 3. SLA performance
| Metric | Target | Actual | Status |
|---|---|---|---|

## 4. Ticket summary
| Category | Count | Trend | Notes |
|---|---|---|---|

## 5. Major incidents
| Incident | Impact | Root cause | Resolution | Prevention |
|---|---|---|---|---|

## 6. Change and maintenance activities

## 7. Backup / monitoring / security highlights

## 8. Risks and open issues
| Risk/Issue | Impact | Owner | Due date | Status |
|---|---|---|---|---|

## 9. Action plan for next month

## 10. Customer decisions required
```

## Supporting files

- `templates/mor-report.md`: report template.
- `examples/customer-wording.md`: customer-safe wording examples.
