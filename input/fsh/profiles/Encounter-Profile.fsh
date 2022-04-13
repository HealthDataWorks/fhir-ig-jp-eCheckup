Profile: Encounter
Parent: $Encounter
Id: jp-eCheckup-Encounter
Title: "Encounterリソース　検診実施情報"
Description: "健診実施情報として、実施した健診の種別や健診実施機関の情報を記録する。同一受診日で複数の健診種類を受診した場合、Component.event要素、及び、Component.event.detailから参照されるEncounterリソースを複数記述し、複数のサービスコード（健診種類）の記述が可能である。"
* ^meta.versionId = "26"
* ^meta.lastUpdated = "2021-07-02T10:36:57.174+00:00"
* ^meta.source = "#GE2GgQAtrXQyW6Y8"
* ^url = "https://igs.healthdataworks.net/jp-eCheckup/StructureDefinition-jp-eCheckup-Encounter.html"
* ^version = "0.5.0"
* ^status = #active
* ^publisher = "HealthDataWorks"
* ^contact[0].name = "実装ガイド作成：小山内 尚、西山 喜樹、能崎 克行"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://healthdataworks.net/"
* ^contact[+].name = "仕様策定メンバー：厚生労働科学特別研究事業 診療情報提供書, 電子処方箋等の電子化医療文書の相互運用性確保のための標準規格の開発研究 研究班"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://std.jpfhir.jp/"
* . ^short = "Encounterリソースであることを示す"
* text MS
* text ^short = "本リソースをテキストで表現したものを入れてもよい。"
* text.status = #generated (exactly)
* text.status MS
* text.status ^short = "テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.div MS
* text.div ^example.label = "for xhtml"
* text.div ^example.valueString = "<div xmlns=\"http://www.w3.org/1999/xhtml\">xxx</div>"
* status = #finished (exactly)
* status MS
* status ^short = "バリューセットEncounterStatus(http://hl7.org/fhir/ValueSet/encouner-status)より”finished\"を指定する。"
* class MS
* class ^short = "受診情報の分類"
* class.system 1.. MS
* class.system = "http://jpfhir.jp/fhir/eCheckup/CodeSystem/encounterCategory" (exactly)
* class.system ^short = "コード体系を識別するURI。"
* class.code 1.. MS
* class.code = #checkup (exactly)
* class.code ^short = "健診を表すコード。"
* class.display = "健診" (exactly)
* class.display MS
* serviceType 1.. MS
* serviceType ^short = "健診プログラムサービスコード。ヘッダー部の健診管理情報における報告区分コードは、本ファイルを作成し提出する事由区分の意味で使用するのに対して、この健診プログラムサービスコードは、健診実施時にどのような区分として実施されたかを示す。"
* serviceType.coding 1..1 MS
* serviceType.coding.system 1.. MS
* serviceType.coding.system = "urn:oid:1.2.392.200119.6.1002" (exactly)
* serviceType.coding.system ^short = "健診プログラムサービスコードのコード体系を表すOID。"
* serviceType.coding.code 1.. MS
* serviceType.coding.code ^short = "健診プログラムサービスコード。"
* serviceType.coding.code ^example.label = "for code"
* serviceType.coding.code ^example.valueCode = #010
* serviceType.coding.display MS
* serviceType.coding.display ^short = "健診プログラムサービスコードの表示名。"
* serviceType.coding.display ^example.label = "for string"
* serviceType.coding.display ^example.valueString = "特定健診"
* period 1.. MS
* period ^short = "健診の受診日。特定健診など1日で実施される健診ではperiod型のstart要素とend要素には同一の日付を記録する。"
* period.start 1.. MS
* period.end 1.. MS
* serviceProvider 1.. MS
* serviceProvider ^short = "健診実施機関を表すOrganizationリソースへの参照。"
* serviceProvider.reference 1.. MS