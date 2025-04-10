// -------------------------------------------------------------------------------				
//  Logical Model				Attachments.fsh
// -------------------------------------------------------------------------------				
Logical: LabOrderAttachmentsCz				
Id: Attachments
Title: "A.2.6 - Attachments"				
Description:  """Information about attached documents"""		

* insert SetFmmandStatusRule( 1, draft)	

* attachment 0..* Attachment "A.2.6.1 - Attached document" """Any documentation inserted as an attachment to the examination order"""
		
//--- END				
//--- END				
//--- END				