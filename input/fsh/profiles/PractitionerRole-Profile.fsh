Profile: PractitionerRole
Parent: $PractitionerRole
Id: jp-eCheckup-PractitionerRole
Title: "PractitionerRoleリソース　文書作成者役割情報"
* ^meta.versionId = "14"
* ^meta.lastUpdated = "2021-07-01T13:04:19.986+00:00"
* ^meta.source = "#8A4Z8vPXqFVwr7r4"
* ^url = "https://igs.healthdataworks.net/jp-eCheckup/StructureDefinition-jp-eCheckup-PractitionerRole.html"
* ^version = "0.5.0"
* ^status = #active
* ^publisher = "HealthDataWorks"
* ^contact[0].name = "実装ガイド作成：小山内 尚、西山 喜樹、能崎 克行"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://healthdataworks.net/"
* ^contact[+].name = "仕様策定メンバー：厚生労働科学特別研究事業 診療情報提供書, 電子処方箋等の電子化医療文書の相互運用性確保のための標準規格の開発研究 研究班"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://std.jpfhir.jp/"
* . ^short = "PractitionerRoleリソースであることを示す"
* text MS
* text ^short = "本リソースをテキストで表現したものを入れてもよい。"
* text.status = #generated (exactly)
* text.status MS
* text.status ^short = "テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.div MS
* text.div ^example.label = "for xhtml"
* text.div ^example.valueString = "<div xmlns=\"http://www.w3.org/1999/xhtml\">xxx</div>"
* practitioner 1.. MS
* practitioner ^short = "健診結果報告書作成者を表すPractitionerリソースへの参照"
* practitioner.reference 1.. MS
* practitioner.reference ^short = "PractitionerリソースのfullUrl要素に指定されるUUIDを指定。"
* practitioner.reference ^example.label = "for string"
* practitioner.reference ^example.valueString = "urn:uuid:195a292d-169a-5cc4-0e10-7a1c0d3fcb2b"
* organization 1.. MS
* organization ^short = "健診結果報告書作成機関を表すOrganizationリソースへの参照。"
* organization.reference 1.. MS
* organization.reference ^short = "OrganizationリソースのfullUrl要素に指定されるUUIDを指定。"
* organization.reference ^example.label = "for string"
* organization.reference ^example.valueString = "urn:uuid:179f9f7f-e546-04c2-6888-a9e0b24e5720"