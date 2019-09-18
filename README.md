# familie-settings
Ordbok, inspections, code style, m.m.

ordbok: 
I IntelliJ settings «Editor->spelling» trykk på «+» på siden av custom dictionaries. 
Velg filene bokmål.dic og nav.dic under ordbok. Dette legger til norske ord og prosjektord 
til stavekontrollen. Når man støter på ord i kode som ikke ligger i ordbok kan disse legges til ved å 
trykke Ctrl+Enter og velge «Save '<ord>' to project-level dictionary». Dette legger ordet til i din lokale prosjektordbok.
Hvis andre utviklere skal få glede av disse kan de legges til i nav.dic og sjekkes inn. 
Det er laget et script (oppdaterOrdbok.sh), som ligger under ordbok, for å hente ut ord fra lokale prosjektordbøker 
og legge disse til i nav.dic. Scriptet henter ord fra alle prosjekter som ligger parallelt i til dette prosjektet
i katalogstrukturen din.

settings:
I IntelliJ under «File->Import Settings...» velg settings.zip og trykk «OK». 
Settings.zip inneholder Code Style og Inspections for Java og Kotlin.