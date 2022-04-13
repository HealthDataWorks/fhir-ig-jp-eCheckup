Extension: InsuredPersonNumber
Id: jp-eCheckup-InsuredPersonNumber
Title: "被保険者証番号"
Description: "被保険者証番号を格納する拡張"
* ^meta.versionId = "12"
* ^meta.lastUpdated = "2021-07-01T12:46:17.093+00:00"
* ^meta.source = "#YX2JSXSG5KvjnfzY"
* ^url = "https://igs.healthdataworks.net/jp-eCheckup/StructureDefinition-jp-eCheckup-InsuredPersonNumber.html"
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
* ^context.expression = "Coverage"
* . ^short = "被保険者証番号を表す拡張"
* url = "https://igs.healthdataworks.net/jp-eCheckup/StructureDefinition-jp-eCheckup-InsuredPersonNumber.html" (exactly)
* url MS
* url ^short = "拡張を識別するURL。"
* value[x] 1.. MS
* value[x] only string
* value[x] ^short = "被保険者証番号。記録形式は「オンライン又は光ディスク等による請求に係る記録条件仕様（医科用）」に従う。"
* value[x] ^example.label = "for string"
* value[x] ^example.valueString = "６７８９０"