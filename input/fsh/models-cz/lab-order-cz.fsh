// -------------------------------------------------------------------------------				
//  Logical Model				lab-order-cz.fsh
// -------------------------------------------------------------------------------				
Logical: LogCzLabOrderCz				
Id: LogLabOrderCz			
Title: "A - Laboratorní žádanka"				
Description:  """Laboratorní žádanka."""		

* insert SetFmmandStatusRule( 1, draft)	

* hlavicka 1..1 LogLabOrderHeaderCz "A.1 -  Hlavička žádanky laboratorního vyšetření" """ Hlavička žádanky laboratorního vyšetření"""
* telo 0..1 LogLabOrderBodyCz "A.2 a A.3 - Tělo žádanky laboratorního vyšetření" """Tělo žádanky laboratorního vyšetření"""
* presentacniForma 1..* PresentedFormCz "A.4 - Vizuální podoba dokumentu" """Žádanka laboratorního vyšetření čitelná lidským okem,  je požadován PDF formát."""
* prilohy 0..* AttachmentsCz "A.5 - Přílohy" """Ostatní přílohy"""

//--- END				
//--- END				
//--- END				