# Mirror of vault automation: end_day
param(
  [string]$Date = ""
)

$vault = "D:\PIF Servizi DIgitali - Cervello"
. "$vault\automation\end_day.ps1" -Date $Date
