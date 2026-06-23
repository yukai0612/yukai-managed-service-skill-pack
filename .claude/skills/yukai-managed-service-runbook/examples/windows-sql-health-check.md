# Example: Windows Server + SQL Server Health Check Runbook

## Checks
| Item | Command/UI | Expected result |
|---|---|---|
| Server uptime | `systeminfo` or Task Manager | Uptime matches maintenance history |
| Disk usage | PowerShell `Get-Volume` | Free space above threshold |
| Critical services | `Get-Service` | App and SQL services Running |
| SQL database status | SSMS / T-SQL | Databases Online |
| SQL Agent jobs | SSMS SQL Agent | No failed critical jobs |
| Event Viewer | System/Application logs | No critical repeated events |

## Evidence
- Screenshot of disk usage.
- SQL Agent failed job list.
- Event Viewer filtered critical/error events.
- Application URL response.
