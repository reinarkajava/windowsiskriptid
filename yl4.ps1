#Enter a path to your import CSV file
#$ADUsers = Import-csv C:\Users\Administrator\Documents\kasutajad.csv
$users = Import-Csv C:\Users\Administrator\Documents\kasutajad.csv -Encoding Default -Delimiter ";"
foreach ($User in $users)
{

       #$Username    = $user.username
       $Password    = $user.password
       $Firstname   = $user.firstname
       $Lastname    = $user.lastname
       $username = $user.FirstName + "." + $user.LastName
       $username = $username.ToLower()
       $Department =  $user.department
      # $OU           = $User.ou

       #Check if the user account already exists in AD
       if (Get-ADUser -F {SamAccountName -eq $username})
       {
               #If user does exist, output a warning message
               Write-Warning "A user account $Username has already exist in Active Directory."
       }
       else
       {
              #If a user does not exist then create a new user account
        
             New-ADUser `
            -SamAccountName $Username `
            -UserPrincipalName "$Username@sv-koolr" `
            -Name "$Firstname $Lastname" `
            -GivenName $Firstname `
            -Surname $Lastname `
            -Enabled $True `
            -ChangePasswordAtLogon $True `
            -DisplayName "$Lastname, $Firstname" `
            -Department $Department `
            -AccountPassword (convertto-securestring $Password -AsPlainText -Force)

       }
}