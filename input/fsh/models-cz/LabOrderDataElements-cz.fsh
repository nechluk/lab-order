// -------------------------------------------------------------------------------				
//  Logical Model				LabOrderDataElements.fsh
// -------------------------------------------------------------------------------				
Logical: LogCzLabOrderDataElementsCz				
Id: LogLabOrderDataElementsCz
Title: "A.2.8 - Datové elementy objednávky vyšetření"				
Description:  """Datové elementy objednávky vyšetření"""		

* insert SetFmmandStatusRule( 1, draft)	

* vysetreni 0..* Base "A.2.8.1 - Požadovaná vyšetření" """"""
* vysetreni.kod 1..1 CodeableConcept "A.2.8.1.1 - Kód vyšetření" """Kód reprezentující vyšetření v rámci dohodnutého číselníku.
Preferované systémy: NČLP"""
* vysetreni.nazev 1..1 CodeableConcept "A.2.8.1.2 - Název vyšetření" """Celý název vyšetření podle použitého číselníku.
Preferované systémy: NČLP"""
* vysetreni.metoda 0..1 CodeableConcept "A.2.8.1.3 - Metoda měření" """Metoda měření
Preferované systémy: SNOMED CT
Preferované systémy: NČLP - NCLPPROC"""
* vysetreni.akreditace 0..1 CodeableConcept "A.2.8.1.4 - Akreditace" """Požadavek na zpracování vyšetření pouze laboratoří mající pro dané vyšetření akreditaci."""
* vysetreni.urgence 0..1 CodeableConcept "A.2.8.1.5 - Urgentnost" """Urgentnost požadovaného vyšetření (vitální indikace, statim, přednostně (zrychlený režim), rutina), pokud je odlišná od urgentnosti celé objednávky.
Preferované systémy: HL7:RequestPriority
Preferované systémy: LOUP"""
* vysetreni.poznamka 0..1 string "A.2.8.1.6 - Poznámka" """Poznámka objednatele k žádanému vyšetření"""
* vysetreni.klinickaUdalost 0..1 LogClinicalEventCz "A.2.8.1.7 - Klinická událost (encounter)" """Informace o klinické události, ke které se vztahuje objednané vyšetření"""
		
//--- END				
//--- END				
//--- END				