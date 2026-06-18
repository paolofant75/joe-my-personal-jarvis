# Mirror of vault automation: end_session
param(
  [string]$SessionFile
)

$vault = "D:\PIF Servizi DIgitali - Cervello"
. "$vault\automation\end_session.ps1" -SessionFile $SessionFile
