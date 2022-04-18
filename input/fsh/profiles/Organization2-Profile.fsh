Profile: Organization2
Parent: $Organization
Id: jp-eCheckup-Organization2
Title: "Organizationリソース　保険者情報"
Description: "保険者は、Coverageリソースのpayorから参照されるOrganizationリソースとして記録する。"
* ^meta.versionId = "23"
* ^meta.lastUpdated = "2021-07-02T10:56:18.951+00:00"
* ^meta.source = "#OVy6f9nWUfOXXDDn"
* ^url = "https://igs.healthdataworks.net/jp-eCheckup/StructureDefinition-jp-eCheckup-Organization2.html"
* ^version = "0.5.0"
* ^status = #active
* ^publisher = "HealthDataWorks"
* ^contact[0].name = "実装ガイド作成：小山内 尚、西山 喜樹、能崎 克行"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://healthdataworks.net/"
* ^contact[+].name = "仕様策定メンバー：厚生労働科学特別研究事業 診療情報提供書, 電子処方箋等の電子化医療文書の相互運用性確保のための標準規格の開発研究 研究班"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://std.jpfhir.jp/"
* . ^short = "Organizationリソースであることを示す"
* text MS
* text ^short = "本リソースをテキストで表現したものを入れてもよい。"
* text.status = #generated (exactly)
* text.status MS
* text.status ^short = "テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.div MS
* text.div ^example.label = "for xhtml"
* text.div ^example.valueString = "<div xmlns=\"http://www.w3.org/1999/xhtml\">xxx</div>"
* identifier 1..1 MS
* identifier ^short = "保険者番号8桁。"
* identifier.system 1.. MS
* identifier.system = "urn:oid:1.2.392.100495.20.3.61" (exactly)
* identifier.system ^short = "保険者番号8桁の名前空間を識別するURL。"
* identifier.value 1.. MS
* identifier.value ^short = "保険者番号8桁。"
* identifier.value ^example.label = "for string"
* identifier.value ^example.valueString = "06123456"
* type 1..1 MS
* type from OrganizationType (required)
* type ^short = "施設種別"
* type.coding 1..1 MS
* type.coding.system 1.. MS
* type.coding.system = "http://terminology.hl7.org/CodeSystem/organization-type" (exactly)
* type.coding.system ^short = "施設種別を表すコード体系を識別するURI。"
* type.coding.code 1.. MS
* type.coding.code = #ins (exactly)
* type.coding.code ^short = "バリューセットOrganizationType(http://hl7.org/fhir/ValueSet/organization-type) から、保険者を表すコードを指定。"
* name 1.. MS
* name ^short = "保険者名称"
* name ^example.label = "for string"
* name ^example.valueString = "サンプル健康保険組合"