Profile: Bundle
Parent: $Bundle
Id: jp-eCheckup-Bundle
Title: "Bundleリソース　文書情報"
Description: "管理的な情報を格納する要素として identifier, timestamp, signature などがあり、文書自体の内容情報を格納する要素としてひとつのentry要素がある。このentry要素の値として、複数のresource要素を含むブロックが繰り返される。各リソースは、他のリソースから参照する際に使用するUUID（一意となる値を自動発番する）を持つfullUrl要素を持つ。参照時にはReference型のreference要素に、このUUIDを指定する。"
* ^meta.versionId = "130"
* ^meta.lastUpdated = "2021-07-02T10:34:19.038+00:00"
* ^meta.source = "#8n2mYCvSukPK9tb4"
* ^url = "https://igs.healthdataworks.net/jp-eCheckup/StructureDefinition-jp-eCheckup-Bundle.html"
* ^version = "0.5.0"
* ^publisher = "HealthDataWorks"
* ^contact[0].name = "実装ガイド作成：小山内 尚、西山 喜樹、能崎 克行"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://healthdataworks.net/"
* ^contact[+].name = "仕様策定メンバー：厚生労働科学特別研究事業 診療情報提供書, 電子処方箋等の電子化医療文書の相互運用性確保のための標準規格の開発研究 研究班"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://std.jpfhir.jp/"
* . ^short = "Bundleリソースであることを示す"
* meta 1.. MS
* meta.profile 1..1 MS
* meta.profile ^short = "本文書のプロファイルを識別するURLを指定する。値は例示である。今後決定されるURLを指定すること。"
* meta.profile ^example.label = "for canonical"
* meta.profile ^example.valueString = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/eCheckup-Bundle/1.0"
* type = #document (exactly)
* type MS
* type ^short = "Bundleリソースがドキュメントタイプであることをしめす。"
* timestamp 1.. MS
* timestamp ^short = "このリソースを生成した日時。時刻の精度はミリ秒とし、タイムゾーンを含めること。"
* timestamp ^example.label = "for instant"
* timestamp ^example.valueInstant = "2020-08-21T03:12:21.123+00:00"
* entry MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    1 1..1 MS and
    2 1..1 MS and
    3 1..1 MS and
    4 1..1 MS and
    5 1..1 MS and
    6 1..1 MS and
    7 ..1 MS and
    8 ..1 MS and
    9 0..* MS and
    10 0..* MS and
    11 0..* MS and
    12 0..* MS and
    13 0..* MS
* entry[1] ^short = "構成リソース一覧目次に相当。"
* entry[=].fullUrl 1.. MS
* entry[=].fullUrl only uri
* entry[=].fullUrl ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
* entry[=].fullUrl ^example.label = "for uri"
* entry[=].fullUrl ^example.valueUri = "urn:uuid:180f219f-97a8-486d-99d9-ed631fe4fc57"
* entry[=].resource 1.. MS
* entry[=].resource only Composition
* entry[=].resource ^short = "文書構成情報"
* entry[+] ^short = "受診者情報エントリ"
* entry[=].fullUrl 1.. MS
* entry[=].fullUrl ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
* entry[=].fullUrl ^example.label = "for uri"
* entry[=].fullUrl ^example.valueUri = "urn:uuid:1af0a9a6-a91d-3aef-fc4e-069995b89c4f"
* entry[=].resource 1.. MS
* entry[=].resource only Patient
* entry[=].resource ^short = "受診者情報"
* entry[+] ^short = "健診結果作成者役割情報エントリ"
* entry[=].fullUrl 1.. MS
* entry[=].fullUrl ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
* entry[=].fullUrl ^example.label = "for uri"
* entry[=].fullUrl ^example.valueUri = "urn:uuid:7f60d206-66c5-4998-931e-86bf2b2d0bdc"
* entry[=].resource 1.. MS
* entry[=].resource only PractitionerRole
* entry[=].resource ^short = "健診結果作成者役割情報"
* entry[+] ^short = "健診結果作成組織情報エントリ"
* entry[=].fullUrl 1.. MS
* entry[=].fullUrl ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
* entry[=].fullUrl ^example.label = "for uri"
* entry[=].fullUrl ^example.valueUri = "urn:uuid:5c9f9f7f-e546-04c2-6888-a9e0b24e5720"
* entry[=].resource 1.. MS
* entry[=].resource only Organization1
* entry[=].resource ^short = "健診結果作成組織情報"
* entry[+] ^short = "健診結果作成者情報エントリ"
* entry[=].fullUrl 1.. MS
* entry[=].fullUrl ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
* entry[=].fullUrl ^example.label = "for uri"
* entry[=].fullUrl ^example.valueUri = "urn:uuid:2d5a292d-169a-5cc4-0e10-7a1c0d3fcb2b"
* entry[=].resource 1.. MS
* entry[=].resource only Practitoner
* entry[=].resource ^short = "健診結果作成者情報"
* entry[+] ^short = "健診実施情報エントリ"
* entry[=].fullUrl 1.. MS
* entry[=].fullUrl ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
* entry[=].fullUrl ^example.label = "for uri"
* entry[=].fullUrl ^example.valueUri = "urn:uuid:1af0a9a6-a91d-8aef-d14e-069795b89c9f"
* entry[=].resource 1.. MS
* entry[=].resource only Encounter
* entry[=].resource ^short = "健診実施情報"
* entry[+] ^short = "受診券情報エントリ"
* entry[=].fullUrl 1.. MS
* entry[=].fullUrl ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
* entry[=].fullUrl ^example.label = "for uri"
* entry[=].fullUrl ^example.valueUri = "urn:uuid:1af0a9a6-a91d-8aef-d14e-069795b89c9f"
* entry[=].resource 1.. MS
* entry[=].resource only Coverage
* entry[=].resource ^short = "受診券情報"
* entry[+] ^short = "保険情報エントリ"
* entry[=].fullUrl 1.. MS
* entry[=].fullUrl ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
* entry[=].fullUrl ^example.label = "for uri"
* entry[=].fullUrl ^example.valueUri = "urn:uuid:1af0a9a6-a91d-8aef-d14e-069795b89c9f"
* entry[=].resource 1.. MS
* entry[=].resource only Coverage2
* entry[=].resource ^short = "保険・自費情報"
* entry[+] ^short = "健診項目情報エントリ"
* entry[=].fullUrl 1.. MS
* entry[=].fullUrl ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
* entry[=].fullUrl ^example.label = "for uri"
* entry[=].fullUrl ^example.valueUri = "urn:uuid:9d543094-213f-5b40-c28e-35f0bc1cb1df"
* entry[=].resource 1.. MS
* entry[=].resource only Observation1
* entry[=].resource ^short = "健診項目情報"
* entry[+] ^short = "検体情報エントリ"
* entry[=].fullUrl 1.. MS
* entry[=].fullUrl ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
* entry[=].fullUrl ^example.label = "for uri"
* entry[=].fullUrl ^example.valueUri = "urn:uuid:75cec9fb-9a82-68e7-f27a-4306b744e3c2"
* entry[=].resource 1.. MS
* entry[=].resource only Specimen
* entry[=].resource ^short = "検体情報"
* entry[+] ^short = "健診結果画像情報エントリ"
* entry[=].fullUrl 1.. MS
* entry[=].fullUrl ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
* entry[=].fullUrl ^example.label = "for uri"
* entry[=].fullUrl ^example.valueUri = "urn:uuid:bdd60110-fd63-bd9e-e289-98de10c2a0c7"
* entry[=].resource 1.. MS
* entry[=].resource only DiagnosticReport
* entry[+] ^short = "健診結果画像報告書エントリ"
* entry[=].fullUrl 1.. MS
* entry[=].fullUrl ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
* entry[=].fullUrl ^example.label = "for uri"
* entry[=].fullUrl ^example.valueUri = "urn:uuid:673f8db5-0ffd-4395-9657-6da00420bbc3"
* entry[=].resource 1.. MS
* entry[=].resource only Media
* entry[+] ^short = "添付文書エントリ"
* entry[=].fullUrl 1.. MS
* entry[=].fullUrl ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
* entry[=].fullUrl ^example.label = "for uri"
* entry[=].fullUrl ^example.valueUri = "urn:uuid:05f5ce7d-3ad7-39b4-4ab5-6dc99dd51922"
* entry[=].resource 1.. MS
* entry[=].resource only DocumentReference
* entry[=].resource ^short = "添付文書情報"