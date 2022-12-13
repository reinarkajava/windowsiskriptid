#Enter a path to your import CSV file
#$ADUsers = Import-csv C:\Users\Administrator\Documents\kasutajad.csv

function Translit {
    param(
        [string] $inputString
         )
        $Translit = @{
        [char] 'ä' = "a"
        [char] 'õ' = "o"
        [char] 'ö' = "o"
        [char] 'ü' = "u"
         }
        $OutputString=""
        foreach ($character in $inputString.ToCharArray())
        {
        if ($Translit[$character] -cne $Null){
        $OutputString += $Translit[$character]
        } else {
            $OutputString += $character
        }
          }

          Write-Output $OutputString
}

$users = Import-Csv C:\Users\Administrator\Documents\kasutajad.csv -Encoding Default -Delimiter ";"
foreach ($User in $users)
{

       #$Username    = $user.username
       $Password    = $user.password
       $Firstname   = $user.firstname
       $Lastname    = $user.lastname
       $username = $user.FirstName + "." + $user.LastName
       $username = $username.ToLower()
       $username = Translit($username)
       $Department =  $user.department
      # $OU           = $User.ou

       #Check if the user account already exists in AD
       if (Get-ADUser -F {SamAccountName -eq $username})
       {
               #If user does exist, output a warning message
               Write-Warning "Konto nimega $Username on juba ADs olemas."
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

