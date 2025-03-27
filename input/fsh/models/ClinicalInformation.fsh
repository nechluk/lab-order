// -------------------------------------------------------------------------------				
//  Logical Model				ClinicalInformation.fsh
// -------------------------------------------------------------------------------				
Logical: LabOrderClinicalInformationCz				
Id: ClinicalInformation
Title: "A.3.1 - Clinical information (anamnesis)"				
Description:  """Information and data communicated to the laboratory affecting the execution of the order or the interpretation of the results"""		

* insert SetFmmandStatusRule( 1, draft)	

* clinicalInfoText 0..1 string "A.3.1.1 - Clinical information in free text" """Clinical information necessary for proper ordering or interpretation of results."""
* clinicalInfoFormalized 0..1 CodeableConcept "A.3.1.2 - Clinical information (medical history) formalized" """Clinical information (medical history) formalized"""
* description 0..* CodeableConcept "A.3.1.3 - Description of the problem/diagnosis/condition" """Diagnosis and other clinical information affecting the course or outcome of the examination.
- Preferred system(s): MKN-10
- Preferred system(s): Orphacode"""
* medication 0..* CodeableConcept "A.3.1.4 - Medications" """A medication block containing information about medications that affect the course or result of the test or its interpretation.
- Preferred system(s): DLP
- Preferred system(s): ATC"""
* vaccination 0..* CodeableConcept "A.3.1.5 - Vaccinations" """Vaccinations"""
* finding 0..* CodeableConcept "A.3.1.6 - Physical findings" """Physical examination of the patient (systolic and diastolic blood pressure, heart rate, saturation, respiratory rate, current body temperature)"""

* urgentInformation 0..1 BackboneElement "A.3.1.7 - Urgent information" """Urgent information block in the same structure as other document types (discharge report, patient summary)"""
* urgentInformation.allergies 1..* CodeableConcept "A.3.1.7.1 - Allergies and intolerances" """Allergies and intolerances that may affect order execution or interpretation of results"""
* urgentInformation.warnings 0..* string "A.3.1.7.2 - Warnings" """Warnings and cautions that may affect order execution or interpretation of results"""

* additionalData 0..1 BackboneElement "A.3.1.8 - Additional formalised data" """"""
* additionalData.date 0..1 date "A.3.1.8.1 - Date" """Date of discovery of the data, to be indicated if different from the date of the order."""
* additionalData.code 1..1 CodeableConcept "A.3.1.8.2 - Code" """Observation code identifying the significance of the data (height, weight, week of gestation, etc.)
- Preferred system(s): NČLP
- Preferred system(s): SNOMED CT"""
* additionalData.value 0..1 Narrative "A.3.1.8.3 - Data value" """Data value including unit of measurement."""
		
//--- END				
//--- END				
//--- END