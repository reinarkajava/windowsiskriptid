



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

$firstname = Read-Host "Sisesta eesnimi"
$lastname = Read-Host "Sisesta perekonnanimi"
$username = $firstname + "." + $lastname
$username = $username.ToLower()
$username = Translit($username)
$displayname = $firstname + " " + $lastname

    if (Get-ADUser -F {SamAccountName -eq $username})
        {
                 Remove-ADUser -Identity $username
            echo "Kasutaja $username on eemaldatud"

        }
        else
        {
        Write "kasutaja puudub või on tekkinud mõni muu probleem"

          }
