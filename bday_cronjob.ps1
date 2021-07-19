$ps_exe = [String] "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"
$task = New-ScheduledTaskAction -Execute $ps_exe -Argument "C:\Users\HP\Documents\PowerShellScripts\bday_notification.ps1"
$bday_trigger = New-ScheduledTaskTrigger -Daily -At 16:00
Register-ScheduledTask -TaskName "Z_Birthday_Reminder" -Trigger $bday_trigger -Action $task