

#Skript kysib kasutaja ees ja perekonnanime
    $KasutajaNimi = Read-Host 'Sisesta Eesnimi'
    $Perekonnanimi = Read-Host 'Sisesta Perekonnanimi'
#Kasutades ToLower funktsiooni muudetakse suured tahed vaikesteks
    $KasEesnimi = $KasutajaNimi.ToLower()
    $KasPerenimi = $Perekonnanimi.ToLower()
    
#Konto Kirlejdus ja parooli parameeter

    $KontoKirjeldus = "Skripti Jaoks"
    $Parool = ConvertTo-SecureString "Parool1!" -AsPlainText -Force


#Saadud info alusel tehakse uued kasutajad
    
    
    echo "Luuakse kasutaja $KasutajaNimi $Perekonnanimi."
    New-LocalUser -Name $KasEesnimi"."$KasPerenimi -Password $Parool -Description "$KontoKirjeldus"
    
Powershelli veateate asendamine
    $ErrorActionPreference = 'SilentlyContinue'
  try { NonsenseString }
catch {
  Write-Host "Viga kasutaja loomisel"

}
