# Mirror of vault automation: start_session
param(
  [string]$Project = "general",
  [string]$Title = ""
)

# Default vault path (update if needed)
$vault = "D:\PIF Servizi DIgitali - Cervello"
. "$vault\automation\start_session.ps1" -Project $Project -Title $Title
