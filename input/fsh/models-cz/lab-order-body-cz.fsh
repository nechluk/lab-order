// -------------------------------------------------------------------------------				
//  Logical Model				lab-order-body-cz.fsh
// -------------------------------------------------------------------------------				
Logical: LogCzLabOrderBodyCz				
Id: LogLabOrderBodyCz
Title: "A.2 Tělo dokumentu"				
Description:  """Tělo dokumentu"""		

* insert SetFmmandStatusRule( 1, draft)	

// common
* objednavka 0..* LogLabOrderInformationCz "A.2.1 - Informace o objednávce a A.2.2 - Důvod objednávky" """Výsledková listina může odpovídat více objednávkám"""
* klinickaUdalost 0..1 LogClinicalEventCz "A.2.3 - Klinická událost (encounter)" """Informace o klinické události, ke které se objednávka vztahuje"""
* uhrada 1..1 LogCoverageOrderCz "A.2.4 - Úhrada" """Informace o způsobu úhrady objednávky vyšetření"""
* terminNavstevy 0..1 LogLabAppointmentCz "A.2.5 - Termín návštěvy" """Informace o objednaném termínu vyšetření (pokud byl termín rezervován)"""
* vzorek 0..* LogSpecimenInformationCz "A.2.6 - Informace o vzorku" """Informace o vzorku"""

// specific
* klinickeInformace 0..1 LogClinicalInformationCz "A.2.7 - Klinické informace (anamnéza)" """Informace a údaje sdělované laboratoři, mající vliv na provedení objednávky či interpretaci výsledků"""
* datoveElementy 1..1 LogLabOrderDataElementsCz "A.2.8 - Datové elementy objednávky vyšetření" """Datové elementy objednávky vyšetření"""
		
//--- END				
//--- END				
//--- END				