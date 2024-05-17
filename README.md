Overzicht
Dit script is geschreven voor het automatiseren van bouwprocessen in Minecraft met behulp van een Turtle, een robot van het ComputerCraft-mod. Het script stuurt de Turtle aan om een structuur te bouwen op basis van vooraf gedefinieerde lagen. De communicatie met de Turtle gebeurt via het Rednet-protocol.

Vereisten
Minecraft met de ComputerCraft-mod
Een Turtle (turtle)
Een Computer voor het sturen van chatcommando's
Rednet-modems aangesloten op de Turtle en de Computer
Bestandstructuur
Lagen
De floors-tabel definieert de structuur die de Turtle gaat bouwen. Elke laag is een array van strings, waarbij elk teken een blok vertegenwoordigt, en een spatie een lege ruimte is.

Functies
debug(message): Print debug-informatie.
bouw(): De hoofdfunctie die de bouwlogica uitvoert.
rednet.open("side"): Opent de Rednet-modem aan de aangegeven kant.
Hoofdlogica
Initialisatie:

Rednet-modem wordt geopend aan de rechterkant van de Turtle.
floors-tabel wordt gedefinieerd met de bouwlagen.
bouw() Functie:

Turtle draait naar rechts en stijgt naar de eerste bouwlaag.
Loopt door elke laag en bouwt de structuur door blokken te plaatsen volgens de floors-tabel.
Keert terug naar de oorspronkelijke positie na het bouwen van elke laag.
Communicatie:

Luistert naar Rednet-berichten. Als het bericht "Build" ontvangen wordt, start de bouwfunctie.
Opent de Rednet-modem aan de linkerkant voor chatcommando's.
Chatcommando's:

Luistert naar chatcommando's van de speler. Als het commando "Ties bouw" ontvangen wordt, wordt een Rednet-bericht "Build" uitgezonden.
Gebruik
Voorbereiding:

Zorg ervoor dat de Turtle voldoende bouwmaterialen heeft in de juiste inventarisslots (slots komen overeen met de cijfers in de floors-tabel).
Plaats de Turtle op de gewenste startpositie.
# Script Uitvoeren:

## turtle
zorg ervoor dat er in de bovenste slot van de turtle een pickaxe zit en onderin een wireless modem
Open je turtle en run:
"wget https://raw.githubusercontent.com/C-Christiaan/TechTitans/main/house.lua?token=GHSAT0AAAAAACSHJQ5E2BEM6XRGGGX7PCR2ZSHIVJA"
en
"wget https://raw.githubusercontent.com/C-Christiaan/TechTitans/main/startupturtle.lua?token=GHSAT0AAAAAACSHJQ5EKCJI63CFF6ARF4GMZSHIV2A startup.lua"
als het goed is zijn nu beide scripts geinstalleerd.
nu hoef je aleen nog maar "reboot" typen en de turtle is klaar.

## Chatbox en computer
Zorg ervoor dat je een chatbox achter de computer plaatst en een wireless modem aan de linkerkant van de computer.
nu moet je op de computer 3 commando's uitvoeren:
"wget https://raw.githubusercontent.com/C-Christiaan/TechTitans/main/startup.lua?token=GHSAT0AAAAAACSHJQ5E2IOWUPX6JOJ76HF4ZSHIZGA"
en
"wget https://raw.githubusercontent.com/C-Christiaan/TechTitans/main/listener.lua?token=GHSAT0AAAAAACSHJQ5EQQO7NTXJ2EBJIMQEZSHI3MA"
en als laatst 
reboot
Bouwen Starten:

Typ in de Minecraft-chat: Ties bouw. Dit zal een Rednet-bericht "Build" sturen naar de Turtle.
De Turtle zal beginnen met bouwen volgens de gedefinieerde lagen in de floors-tabel.
Foutenopsporing
Plaatsing mislukt: Als de Turtle er niet in slaagt een blok te plaatsen, wordt een debug-bericht afgedrukt.
Rednet-verbinding: Controleer of de Rednet-modems correct zijn aangesloten en geconfigureerd.
Voorbeeld
