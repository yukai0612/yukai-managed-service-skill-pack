# Example: Hyper-V CSV Investigation Style

## Symptoms
- VM role failed to come online.
- CSV redirected mode appears.
- One node can see VM files, the other cannot.

## Possible causes
| Cause | Why | Check |
|---|---|---|
| CSV path inconsistency | `ClusterStorage.000/001/003` appears after reboot | `Get-ClusterSharedVolume`, `dir C:\ClusterStorage` |
| MPIO/path issue | Storage visible inconsistently between nodes | vendor MPIO tool, SAN zoning, disk path count |
| Permission issue | VM files exist but Hyper-V cannot access | `icacls`, owner check |
| AV lock/exclusion issue | VM files blocked or scanned | AV policy and exclusions |

## Safe checks first
```powershell
Get-ClusterSharedVolume
Get-ClusterGroup
Get-ClusterResource
Get-VM -ComputerName <node>
Test-Path "C:\ClusterStorage\Volume1"
icacls "C:\ClusterStorage\Volume1"
```
