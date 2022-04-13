Extension: Position
Id: jp-eCheckup-Position
Title: "役職"
Description: "労働安全衛⽣法健診で、受信者の勤務先での役職を表現する拡張"
* ^meta.versionId = "15"
* ^meta.lastUpdated = "2021-07-01T13:03:09.506+00:00"
* ^meta.source = "#9I7oSfZ03Dvpa5Wx"
* ^url = "https://igs.healthdataworks.net/jp-eCheckup/StructureDefinition-jp-eCheckup-Position.html"
* ^version = "0.5.0"
* ^publisher = "HealthDataWorks"
* ^contact[0].name = "実装ガイド作成：小山内 尚、西山 喜樹、能崎 克行"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://healthdataworks.net/"
* ^contact[+].name = "仕様策定メンバー：厚生労働科学特別研究事業 診療情報提供書, 電子処方箋等の電子化医療文書の相互運用性確保のための標準規格の開発研究 研究班"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://std.jpfhir.jp/"
* ^kind = #resource
* ^context.type = #fhirpath
* ^context.expression = "Patient.contact"
* . ^short = "受診者の勤務先での役割、役職情報。"
* . ^mustSupport = false
* url = "https://igs.healthdataworks.net/jp-eCheckup/StructureDefinition-jp-eCheckup-Position.html" (exactly)
* url MS
* url ^short = "拡張を表すURI。"
* value[x] 1.. MS
* value[x] only string
* value[x] ^short = "役職名称。"
* value[x] ^example.label = "for string"
* value[x] ^example.valueString = "課長"