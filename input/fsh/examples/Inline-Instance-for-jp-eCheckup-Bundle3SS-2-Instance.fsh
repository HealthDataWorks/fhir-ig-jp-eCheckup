Instance: Inline-Instance-for-jp-eCheckup-Bundle3SS-2
InstanceOf: Patient
Usage: #inline
* identifier.system = "urn:oid:1.2.392.200119.6.102.11234567890"
* identifier.value = "34567"
* name[0].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #IDE
* name[=].use = #official
* name[=].family = "健診"
* name[=].given = "太郎"
* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #SYL
* name[=].use = #official
* name[=].family = "ケンシン"
* name[=].given = "タロウ"
* telecom.system = #phone
* telecom.value = "03-1111-2222"
* telecom.use = #home
* gender = #female
* birthDate = "1960-08-03"
* address.text = "神奈川県横浜市港区１－２－３"
* address.postalCode = "123-4567"
* address.country = "JP"
* contact.extension.url = "https://igs.healthdataworks.net/jp-eCheckup/StructureDefinition-jp-eCheckup-Position.html"
* contact.extension.valueString = "課長"
* contact.relationship = urn:oid:2.16.840.1.113883.2.2.1.6.5006#1000 "勤務先"
* contact.organization = Reference(urn:uuid:7f60d206-66c5-4998-931e-86bf2b2d0bdc)
* contact.period.start = "2010-04-01"