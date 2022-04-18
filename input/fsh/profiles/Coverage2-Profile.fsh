Profile: Coverage2
Parent: $Coverage
Id: jp-eCheckup-Coverage2
Title: "Coverageリソース　保険証情報"
Description: "保険証情報を記録する。"
* ^meta.versionId = "51"
* ^meta.lastUpdated = "2021-07-02T10:36:14.696+00:00"
* ^meta.source = "#43Q5bmtJmS57BY10"
* ^url = "https://igs.healthdataworks.net/jp-eCheckup/StructureDefinition-jp-eCheckup-Coverage2.html"
* ^version = "0.5.0"
* ^status = #active
* ^publisher = "HealthDataWorks"
* ^contact[0].name = "実装ガイド作成：小山内 尚、西山 喜樹、能崎 克行"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://healthdataworks.net/"
* ^contact[+].name = "仕様策定メンバー：厚生労働科学特別研究事業 診療情報提供書, 電子処方箋等の電子化医療文書の相互運用性確保のための標準規格の開発研究 研究班"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://std.jpfhir.jp/"
* text MS
* text ^short = "本リソースをテキストで表現したものを入れてもよい。"
* text.status = #generated (exactly)
* text.status MS
* text.status ^short = "テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.div MS
* text.div ^example.label = "for xhtml"
* text.div ^example.valueString = "<div xmlns=\"http://www.w3.org/1999/xhtml\">xxx</div>"
* extension MS
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    InsuredPersonSymbol named 1 ..1 MS and
    InsuredPersonNumber named 2 ..1 MS
* extension[1] ^short = "被保険者証記号を表す拡張「InsuredPersonSymbol」。保険種別が「1：医保」、「2：国保」の場合に記録する。被保険者証記号がない場合は、本拡張要素自体出現しない。"
* extension[+] ^short = "被保険者証番号を表す拡張「InsuredPersonNumber」。保険種別が「1：医保」、「2：国保」、「7：後期高齢者」の場合に記録する。それ以外の場合は、本拡張要素自体出現しない。"
* status = #active (exactly)
* status MS
* status ^short = "処方箋発行時に真に有効な保険かどうかは意味しない。"
* type 1.. MS
* type from $ValueSet-insuranceType.html (required)
* type ^short = "保険種別コード。"
* type.coding 1..1 MS
* type.coding.system 1.. MS
* type.coding.system = "urn:oid:1.2.392.100495.20.2.61" (exactly)
* type.coding.system ^short = "保険種別コード体系を識別するURI。"
* type.coding.code 1.. MS
* type.coding.code ^short = "保険種別コード。"
* type.coding.code ^example.label = "for code"
* type.coding.code ^example.valueCode = #1
* beneficiary MS
* beneficiary ^short = "この保険で給付される受診者情報（Patientリソース）へのリテラル参照。"
* beneficiary.reference 1.. MS
* beneficiary.reference ^short = "PatientリソースのfullUrl要素に指定されるUUIDを指定。"
* beneficiary.reference ^example.label = "for string"
* beneficiary.reference ^example.valueString = "urn:uuid:11f0a9a6-a91d-3aef-fc4e-069995b89c4f"
* dependent MS
* dependent ^short = "被保険者証記号・番号に対する個人単位被保険者番号（枝番）。「オンライン又は光ディスク等による請求に係る記録条件仕様（医科用）」に従い、桁数が2桁に満たない場合は、先頭に\"0\"を記録し2桁で記録する。"
* dependent ^example.label = "for string"
* dependent ^example.valueString = "01"
* relationship 1.. MS
* relationship from $ValueSet-subscriber-relationship.html (required)
* relationship ^short = "給付される患者と被保険者との関係（本人、または被扶養者）。被保険者区分コード表より「1：被保険者」、または、「2：被扶養者」を指定する。"
* relationship.coding 1..1 MS
* relationship.coding.system 1.. MS
* relationship.coding.system = "urn:oid:1.2.392.100495.20.2.62" (exactly)
* relationship.coding.system ^short = "被保険者区分コードのコード体系を識別するURI。"
* relationship.coding.code 1.. MS
* relationship.coding.code ^short = "被保険者区分コード。"
* relationship.coding.code ^example.label = "for code"
* relationship.coding.code ^example.valueCode = #1
* relationship.coding.display MS
* relationship.coding.display ^example.label = "for string"
* relationship.coding.display ^example.valueString = "被保険者"
* period MS
* period ^short = "保険証の有効期間。保険証に明示的に記載がある場合、かつ、医療機関がその情報を把握している場合のみ記録する。"
* period.start MS
* period.start ^short = "保険証の有効期間の開始日。資格取得日。ISO8601に準拠してyyyy-mm-dd形式で指定する。"
* period.end MS
* period.end ^short = "保険証の有効期間の終了日。資格喪失日。ISO8601に準拠してyyyy-mm-dd形式で指定する。"
* payor ..1 MS
* payor ^short = "費用負担者（医療保険の場合は保険者）情報。保険種別が「6：自費」の場合、患者本人を表すPatientリソースへの参照。それ以外の保険種別は、費用負担者を表すOrganizationリソースへの参照。"
* payor.reference 1.. MS
* payor.reference ^short = "PatientリソースまたはOrganizationリソースのfullUrl要素に指定されるUUIDを指定。"
* payor.reference ^example.label = "for string"
* payor.reference ^example.valueString = "urn:uuid:7c9f9f7fe546-0ac2-6828-a9e0b24e5750"