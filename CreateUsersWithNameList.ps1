# ---This powershell Script generate the users in your AD enviroment. Names are listed on UserName.txt file. You can have your own name list or you can edit the UserName.txt file. ---#

$UserPassword   = "Pa55w.rd"
$UserNameList = Get-Content .\UserName.txt     # Make sure put the UserName.txt file in same path with this Script

# --- change password to secure string ---#

$password = ConvertTo-SecureString $UserPassword -AsPlainText -Force
New-ADOrganizationalUnit -Name _USERS -ProtectedFromAccidentalDeletion $false

foreach ($n in $UserNameList) {
    $first = $n.Split(" ")[0].ToLower()
    $last = $n.Split(" ")[1].ToLower()
    $username = "$($first.Substring(0,1))$($last)".ToLower()
    Write-Host "Creating user: $($username)" -BackgroundColor Black -ForegroundColor Cyan
    
    New-AdUser -AccountPassword $password `
               -GivenName $first `
               -Surname $last `
               -DisplayName $username `
               -Name $username `
               -EmployeeID $username `
               -PasswordNeverExpires $true `
               -Path "ou=_USERS,$(([ADSI]`"").distinguishedName)" `
               -Enabled $true
}
