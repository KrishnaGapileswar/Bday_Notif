$bday_list = @{[DateTime] "07-11-2021" = @("Shiva", "Hari"); [DateTime] "07-12-2021" = @("Krishna")}
$today = (Get-Date).Date
$bday_popup = New-Object -ComObject Wscript.shell
$popup_title = [String] "Birthday Bash"
foreach($bday in $bday_list.Keys)
{
    if($today -eq $bday)
    {
        $popup_content = [String] ""
        foreach($name in $bday_list[$bday])
        {
             $popup_content = $popup_content + $name + ", "
        }
        $popup_content = $popup_content + [String] "have their birthdays today. `nWish them the best!"
        $bday_popup.Popup($popup_content, 20, $popup_title, 0x0)      
    }
}
