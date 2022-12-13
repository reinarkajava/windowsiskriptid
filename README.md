# Windows Powershelli skriptid.

### Info
Skriptid on mõeldud nii lokaalsete kui ka domeenikasutajate lisamiseks ja eemaldamiseks kasutades Powershelli.

#### Sisu
Kasutajaeemaldamine - Skript, mis eemaldab ADDS kasutajad olenevalt kasutaja sisestatavast ees ja perekonnanimest
Kasutajalisamine - Skript, mis lisab ADDS kasutajad kasutades kasutajad.csv faili
yl1 - Skript, mis lisab lokaalsed kasutajad olenevalt kasutaja sisestatavast ees ja perekonnanimest
yl2 - Skript, mis lisab lokaalsed kasutajad olenevalt kasutaja sisestatavast ees ja perekonnanimest


### Nõuded
ADDS skriptide kasutamiseks on vaja paigaldada enda powershelli ADDS moodul. ADDS kasutajate loomiseks on vaja ka alla laadida või ise luua kasutajad.csv fail, mis sisaldab
kasutajaid ja nende paroole.

### Skriptide muutmine ja käivitamine.
1. Lae skript alla või kopeeri skripti sisu
2. Kui kopeerisid skripti sisu, siis tuleb avada Powershell ISE, kleepida skripti sisu ja salvestada fail
3. Kui on vaja skripti muuta siis ava skriptifail Powershell ISE-ga
4. Käivita skript kas topeltklikkides failile või Powershell ISE-s kasutades F5 klahvi.
