$Session = New-Object -ComObject "Microsoft.Update.Session"
$Searcher = $Session.CreateUpdateSearcher()
$historyCount = $Searcher.GetTotalHistoryCount()
$latestUpdate = $Searcher.QueryHistory(0, $historyCount) | Where-Object {$_.Title -like "*SQL*" -and $_.Operation -eq 1 } | Sort-Object -Property Date -Descending | Select-Object -First 1
if ($latestUpdate) {
	       @{
            "Title" = $latestUpdate.Title
            "Date" = $latestUpdate.Date
            "UpdateId" = $latestUpdate.UpdateIdentity.UpdateID
            } | ConvertTo-Json
}
else {
        "No SQL Server updates found"
}

$UpdateId

#if($update.UpdateId) {
          $Session = New-Object -ComObject "Microsoft.Update.Session"
          $updater = $Session.CreateUpdateSearcher().CreateUpdater()
          $UninstallationResult = $Updater.UninstallUpdates($Session.CreateUpdateSearcher().QueryHistory("b9ec5083-7a1e-4eb9-800d-97f7c1eaa98e"))
          if ($UninstallationResult.HResult -eq 0) {
            "Update uninstallation initiated successfully"
          } else {
            "Failed to uninstall update. Error Code: $($UninstallationResult.HResult)"
          }
 #       } else {
  #        "No update to uninstall"
   #     }