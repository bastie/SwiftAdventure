# Decision Model and Notation

Quelle: https://www.omg.org/spec/DMN/
Version: 1.3 (März 2021)

**Allgemeiner Hinweis:** Kommentare in den Klassen sind (teilweise) direkt aus der Spezifikation übernommen. 

## Umfang

Ziel ist Entscheidungsregeln verständliche für alle Stakeholder vom Anwender über Analysen bis zum Entwickler bereitzustellen und dabei das Zusammenspiel mit BPMN zu ermöglichen und über eine externe Repräsentation (XML) austauschbar zu sein.

## Konformität

Software kann die Konformitätsstufen 1 bis 3 erfüllen.

### Konformitätsstufen

Software der Konformitätsstufe 1 muss implementieren:

* Entscheidungsanforderung (Decision Requirements) und 
* Entscheidungslogik (Decision Logic) und
* Entscheidungstabellen (Decision Table)

Software der Konformitätsstufe 2 muss die Konformitätsstufe 1 implementieren und:

* die Einfache Ausdruckssprache (S-FEEL) interpretieren

Software der Konformitätsstufe 3 muss die Konformitätsstufe 2 implementieren und:

* die Ausdruckssprache (FEEL) welche eine Erweiterung von S-FEEL ist

## Einführung in DMN

### Kontext

    missing 
    
### Umfang und Verwendung

    missing
    
### Basiskonzept

Als **Entscheidung** (Decision) definieren wir den Vorgang aus den gegebenen Eingabewerten (*E*) durch eine Verarbeitungslogik (*V*) einen Ausgabewert (*A*) zu bestimmen (*EVA*). Die Verarbeitungslogik definiert hierbei wie aus den Eingabewerten der Ausgabewert bestimmt wird und eine oder mehrere Modelle der Geschäftslogik beinhalten.
Eine Entscheidung kann dabei von dem Ausgabewert einer vorherigen Entscheidungen abhängig sein.

    missing
    
    
## Anforderungen (DRG und DRD)

### missing

### missing

### Metamodell

#### DMN Element Metamodell

