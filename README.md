# familie-settings
Ordbok, inspections, code style, m.m.

## ordbok: 
For å legge til ordboken til IntelliJ:

1. I IntelliJ, `Settings/ Editor / Spelling` trykk på «+» på siden av custom dictionaries. 
2. Velg filene `bokmål.dic` og `nav.dic` i ordbok-mappa. Trykk «OK».  

Dette legger til norske ord og prosjektord til stavekontrollen. 
Når man støter på ord i kode som ikke ligger i ordbok kan disse legges til ved å trykke `Ctrl+Enter` og velge `Save '<ord>' to 
project-level dictionary`. Dette legger ordet til i din lokale prosjektordbok.

Hvis andre utviklere skal få glede av disse kan de legges til i nav.dic og sjekkes inn. 
Det er laget et script (oppdaterOrdbok.sh), som ligger under ordbok, for å hente ut ord fra lokale prosjektordbøker 
og legge disse til i `nav.dic`. Scriptet henter ord fra alle prosjekter som ligger parallelt i til dette prosjektet
i katalogstrukturen din.

## settings:
I IntelliJ under `Settings/ Inspections` trykk på tannhjulet ved siden av valgt profil 
velg `Import profile...` og velg `teamfamilie-inspections`. 
I IntelliJ under `Settings/ Code Style` trykk på tannhjulet ved siden av valgt profil 
velg `Import scheme / IntelliJ IDEA code style XML` og velg `teamfamilie-code-style`. 

