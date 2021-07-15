$users = get-content D:\scripts\users.csv

foreach ($user in $users) {

Write-Output $user

gam user $user@acme.com print filelist id > D:\scripts\files.csv
$MyFile = Get-Content D:\scripts\files.csv
$MyFile | Out-File -Encoding "UTF8" D:\scripts\files.csv
gam csv D:\scripts\files.csv gam user "~Owner" delete drivefile "~id" purge

}

 