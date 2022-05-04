Profile: Coverage
Parent: $Coverage
Id: jp-eCheckup-Coverage
Title: "Coverageリソース　受診券情報"
Description: """受診者が健診実施時に属した保険者の情報および、その保険者が発行した受診券に関する情報を表現する。本情報は、特定健診の結果を受診者の希望により電子的に提供するケースにおいては任意に記述して差し支えないが、それ以外ではなくてもよい。

受診券が発行されないケースでは、本要素は出現しない。"""
* ^meta.versionId = "25"
* ^meta.lastUpdated = "2021-07-02T10:35:44.467+00:00"
* ^meta.source = "#UDZ9C4r0RUxTpjtz"
* ^url = $Coverage-Profile-Url
* ^version = "0.5.0"
* ^status = #active
* ^publisher = "HealthDataWorks"
* ^contact[0].name = "実装ガイド作成：小山内 尚、西山 喜樹、能崎 克行"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://healthdataworks.net/"
* ^contact[+].name = "仕様策定メンバー：厚生労働科学特別研究事業 診療情報提供書, 電子処方箋等の電子化医療文書の相互運用性確保のための標準規格の開発研究 研究班"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://std.jpfhir.jp/"
* . ^short = "Coverageリソースであることを示す"
* meta 1..1 MS
* meta.profile 1..1 MS
* meta.profile ^short = "本リソースのプロファイルを識別するURLを指定する。"
* meta.profile = $Coverage-Profile-Url (exactly)
* text MS
* text ^short = "本リソースをテキストで表現したものを入れてもよい。"
* text.status = #generated (exactly)
* text.status MS
* text.status ^short = "テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.div MS
* text.div ^example.label = "for xhtml"
* text.div ^example.valueString = "<div xmlns=\"http://www.w3.org/1999/xhtml\">xxx</div>"
* status = #active (exactly)
* status MS
* type 1.. MS
* type from $ValueSet-checkupCardType.html (required)
* type ^short = "受診券を表す種別を指定する。"
* type.coding 1..1 MS
* type.coding.system 1.. MS
* type.coding.system = "urn:oid:1.2.392.200119.6.208" (exactly)
* type.coding.system ^short = "受診券の券面種別コード体系を識別するURI。"
* type.coding.code 1.. MS
* type.coding.code = #1 (exactly)
* type.coding.code ^short = "受診券情報であることを表すコード。"
* subscriberId 1.. MS
* subscriberId ^short = "受診券整理番号"
* subscriberId ^example.label = "for string"
* subscriberId ^example.valueString = "21100000123"
* beneficiary MS
* beneficiary ^short = "受診者情報（Patientリソース）へのリテラル参照。"
* period 1.. MS
* period ^short = "受診券の有効期間。"
* period.start MS
* period.start ^short = "受診券の有効期間の開始日。資格取得日。ISO8601に準拠してyyyy-mm-dd形式で指定する。"
* period.end MS
* period.end ^short = "受診券の有効期間の終了日。資格喪失日。ISO8601に準拠してyyyy-mm-dd形式で指定する。"
* payor ..1 MS
* payor ^short = "受診券の発行者である費用負担者（医療保険の場合は保険者）情報。費用負担者を表すOrganizationリソースへの参照。"
* payor.reference 1.. MS
* payor.reference ^short = "OrganizationリソースのfullUrl要素に指定されるUUIDを指定。値は例示。"
* payor.reference ^example.label = "for string"
* payor.reference ^example.valueString = "urn:uuid:7c9f9f7f-e546-0ac2-6828-a9e0b24e5750"