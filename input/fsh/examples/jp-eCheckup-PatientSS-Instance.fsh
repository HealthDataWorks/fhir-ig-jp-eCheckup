Instance: jp-eCheckup-PatientSS
InstanceOf: Patient
Title: "Patientリソース　受診者情報記述例"
Description: "受診者情報を表すサンプルインスタンス。"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2021-06-14T07:40:08.531+00:00"
* meta.source = "#ckq7qImATe79jCOc"
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
* gender = #male
* birthDate = "1950-05-04"
* address.text = "神奈川県横浜市港区１－２－３"
* address.postalCode = "123-4567"
* address.country = "JP"