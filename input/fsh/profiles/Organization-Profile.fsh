Profile: Organization1
Parent: $Organization
Id: jp-eCheckup-Organization
Title: "Organizationリソース　検診結果報告書作成組織情報"
Description: "健康診断結果報告書を作成した施設は、PractitionerRoleリソース、及び、そのリソースから参照されるOrganizationリソースで表現する。"
* ^meta.versionId = "33"
* ^meta.lastUpdated = "2021-07-02T10:56:03.412+00:00"
* ^meta.source = "#QvwEcEf35eGwVDlv"
* ^url = "https://igs.healthdataworks.net/jp-eCheckup/StructureDefinition-jp-eCheckup-Organization.html"
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
* identifier ^short = "保険医療機関番号10桁。"
* identifier.system 1.. MS
* identifier.system = "urn:oid:1.2.392.200119.6.102" (exactly)
* identifier.system ^short = "保険医療機関番号10桁の名前空間を識別するURL。"
* identifier.value 1.. MS
* identifier.value ^short = "保険医療機関番号10桁。"
* identifier.value ^example.label = "for string"
* identifier.value ^example.valueString = "1311234567"
* type 1..1 MS
* type from OrganizationType (required)
* type ^short = "施設種別"
* type.coding 1..1 MS
* type.coding.system 1.. MS
* type.coding.system = "http://terminology.hl7.org/CodeSystem/organization-type" (exactly)
* type.coding.system ^short = "施設種別を表すコード体系を識別するURI。"
* type.coding.code 1.. MS
* type.coding.code = #prov (exactly)
* type.coding.code ^short = "バリューセットOrganizationType(http://hl7.org/fhir/ValueSet/organization-type) から、医療機関を表すコードを指定。"
* name 1.. MS
* name ^short = "医療機関名称。"
* name ^example.label = "for string"
* name ^example.valueString = "厚生労働省第一病院"
* telecom ..1 MS
* telecom ^short = "医療機関電話番号"
* telecom.system 1.. MS
* telecom.system = #phone (exactly)
* telecom.value 1.. MS
* telecom.value ^example.label = "for string"
* telecom.value ^example.valueString = "0123-456-7890"
* address ..1 MS
* address ^short = "医療機関住所"
* address.text 1.. MS
* address.text ^example.label = "for string"
* address.text ^example.valueString = "東京都千代田区千代田９－９－９"
* address.postalCode 1.. MS
* address.postalCode ^short = "医療機関の郵便番号。"
* address.postalCode ^example.label = "for string"
* address.postalCode ^example.valueString = "100-0001"
* address.country 1.. MS
* address.country ^short = "国内の場合「JP」固定。"
* address.country ^example.label = "for string"
* address.country ^example.valueString = "JP"