Instance: Inline-Instance-for-jp-eCheckup-Bundle2SS-1
InstanceOf: Composition
Usage: #inline
* language = #ja
* extension.url = "http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber"
* extension.valueString = "1.0"
* identifier.system = "http://jpfhir.jp/fhir/eCheckup/documentIdentifier"
* identifier.value = "12345"
* status = #final
* type = $documentType#53576-5 "健康診断結果報告書"
* category.coding.version = "1"
* category.coding = urn:oid:2.16.840.1.113883.2.2.1.6.1001#10 "特定健診"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* encounter = Reference(urn:uuid:3af3232e-1579-d4f6-3578-aa1e799fdcad)
* date = "2020-10-21T12:12:21+09:00"
* author[0] = Reference(urn:uuid:e5ea153d-fd94-adcc-fb27-df24f394d3fa)
* author[+] = Reference(urn:uuid:3f22e24a-3176-9f91-8e16-7ed8242cac6a)
* title = "健康診断結果のお知らせ"
* confidentiality = #N
* custodian = Reference(urn:uuid:d1fb6063-8f12-4c2c-922a-7b5e467c8407)
* event.code = urn:oid:2.16.840.1.113883.2.2.1.6.1002#010 "特定健診"
* event.period.start = "2020-10-01"
* event.period.end = "2020-10-01"
* event.detail = Reference(urn:uuid:3af3232e-1579-d4f6-3578-aa1e799fdcad)
* section.title = "添付書類セクション"
* section.code = urn:oid:2.16.840.1.113883.2.2.1.6.1010#01990 "添付書類セクション"
* section.text.status = #generated
* section.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">添付書類：\n                        </div>"
* section.entry = Reference(urn:uuid:d998b928-380e-0700-949b-3b092b3ca3ad)