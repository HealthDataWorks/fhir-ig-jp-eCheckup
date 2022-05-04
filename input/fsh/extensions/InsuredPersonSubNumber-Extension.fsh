Extension: InsuredPersonSubNumber
Id: jp-eCheckup-InsuredPersonSubNumber
Title: "被保険者証番号の枝番"
Description: "被保険者証番号の枝番を格納する拡張"
* ^meta.versionId = "12"
* ^meta.lastUpdated = "2021-07-01T12:46:17.093+00:00"
* ^meta.source = "#YX2JSXSG5KvjnfzY"
* ^url = "https://igs.healthdataworks.net/jp-eCheckup/StructureDefinition-jp-eCheckup-InsuredPersonSubNumber.html"
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
* . ^short = "被保険者証番号の枝番を表す拡張"
* url = "https://igs.healthdataworks.net/jp-eCheckup/StructureDefinition-jp-eCheckup-InsuredPersonSubNumber.html" (exactly)
* url MS
* url ^short = "拡張を識別するURL。"
* value[x] 1.. MS
* value[x] only string
* value[x] ^short = "被保険者証記号・番号に対する個人単位被保険者番号(枝番)。「オンライン又は光ディスク等による請求に係る記録条件仕様(医科用)」に従い、桁数が2桁に満たない場合は、先頭に"0"を記録し2桁で記録する。値は例示。後続のdependent要素にも同一の情報を記述すること。"
* value[x] ^example.label = "for string"
* value[x] ^example.valueString = "01"