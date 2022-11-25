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
    
    
    echo "Eemaldatakse kasutaja $KasutajaNimi.$Perekonnanimi."
    Remove-LocalUser -Name $KasEesnimi"."$KasPerenimi
     try { Remove-LocalUser }
    catch {
       Write-Host "Kasutaja on eemaldatud"
      }
 
    Powershelli veateate asendamine
    $ErrorActionPreference = 'SilentlyContinue'
    try { NonsenseString }
    catch {
    Write-Host "Viga kasutaja eemaldamisel"
    }