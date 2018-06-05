$DaysInactive = 90
$inactiveDate = (get.date).Adddays(-($DaysInactive))

get-aduser -filter{LastLogondate -lt $inactiveDate -and Enabled -eq $true -and PasswordNeverExpires -eq $false} -properties *| select-object name, LastLogonDate, manager|out-file C:\Batch\Test.csv