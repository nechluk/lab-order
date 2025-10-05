// -------------------------------------------------------------------------------				
//  Logical Model				ClinicalInformation.fsh
// -------------------------------------------------------------------------------				
Logical: LogCzLabOrderClinicalInformationCz				
Id: LogClinicalInformationCz
Title: "A.2.7 - Klinické informace (anamnéza)"				
Description:  """Informace a údaje sdělované laboratoři, mající vliv na provedení objednávky či interpretaci výsledků"""		

* insert SetFmmandStatusRule( 1, draft)	

* klinickeInformaceText 0..1 string "A.2.7.1 - Klinické informace volným textem" """Klinické informace nezbytné pro správné provedení objednávky či interpretaci výsledků."""
* klinickeInformaceKod 0..1 CodeableConcept "A.2.7.2 - Klinické informace (anamnéza) formalizovaná" """Klinické informace (anamnéza) formalizovaná"""
* popis 0..* CodeableConcept "A.2.7.3 - Popis problému / diagnózy / stavu" """Diagnózy a dalších klinických informací mající vliv na průběh či výsledek vyšetření.
- Preferované systémy: MKN-10
- Preferované systémy: Orphacode"""
* medikace 0..* CodeableConcept "A.2.7.4 - Medikace" """Blok medikace obsahující informace o medikaci mající vliv na průběh či výsledek vyšetření či jeho interpretaci.
- Preferované systémy: DLP
- Preferované systémy: ATC"""
* ockovani 0..* CodeableConcept "A.2.7.5 - Očkování" """Očkování"""
* nalez 0..* CodeableConcept "A.2.7.6 - Fyzikální nález" """Fyzikální vyšetření pacienta (systolický a diastolický tlak, srdeční frekvence, saturace, dechová frekvence, aktuální telesná teplota)"""
* datumHospitalizace 0..* dateTime "A.2.7.7 - Date of hospitalization" """Date of patient hospitalization"""

* urgentniInformace 0..1 Base "A.2.7.8 - Urgentní informace" """Blok urgentní inforace ve stejné strukruře jako v ostatních typech dokumentů (propouštěcí zpráva, pacientský souhrn)"""
* urgentniInformace.alergie 1..* CodeableConcept "A.2.7.8.1 - Alergie a intolerance" """Alergie a intolerance, které mohou vlivnit realizaci objednávky či interpretaci výsledků"""
* urgentniInformace.varovani 0..* string "A.2.7.8.2 - Varování" """Varování a upozornění, která mohou vlivnit realizaci objednávky či interpretaci výsledků"""

* dalsiUdaje 0..1 Base "A.2.7.9 - Další formalizované údaje" """"""
* dalsiUdaje.datum 0..1 dateTime "A.2.7.9.1 - Datum" """DDatum zjištění údaje, uvádí se, pokud je odlišné od data vystavení objednávky."""
* dalsiUdaje.kod 1..1 CodeableConcept "A.2.7.9.2 - Kód" """Kód pozorování identifikující význam údaje (výška, váha, týden gravidity a pod.)
- Preferované systémy: NČLP
- Preferované systémy: SNOMED CT"""
* dalsiUdaje.hodnota 0..1 Narrative "A.2.7.9.3 - Hodnota" """Hodnota údaje včetně jednotky měření."""
		
//--- END				
//--- END				
//--- END