Profile: Specimen
Parent: $Specimen
Id: jp-eCheckup-Specimen
Title: "Specimenリソース　検体情報"
* ^meta.versionId = "14"
* ^meta.lastUpdated = "2021-07-01T13:07:04.863+00:00"
* ^meta.source = "#OEB4gPGyvP1RTo7T"
* ^url = "https://igs.healthdataworks.net/jp-eCheckup/StructureDefinition-jp-eCheckup-Specimen.html"
* ^version = "0.5.0"
* ^status = #active
* ^publisher = "HealthDataWorks"
* ^contact[0].name = "実装ガイド作成：小山内 尚、西山 喜樹、能崎 克行"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://healthdataworks.net/"
* ^contact[+].name = "仕様策定メンバー：厚生労働科学特別研究事業 診療情報提供書, 電子処方箋等の電子化医療文書の相互運用性確保のための標準規格の開発研究 研究班"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://std.jpfhir.jp/"
* . ^short = "Specimenリソースであることを示す"
* text MS
* text ^short = "本リソースをテキストで表現したものを入れてもよい。内容を省略しても構わない。このデータは人がこのリソースの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。 この内容と以降の構造化されたデータとの内容が不一致の場合には、この要素の内容は無視される。（本文書のすべてのリソースで同様とする）"
* text.status = #generated (exactly)
* text.status MS
* text.status ^short = "テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.div MS
* text.div ^example.label = "for xhtml"
* text.div ^example.valueString = "<div xmlns=\"http://www.w3.org/1999/xhtml\">xxx</div>"
* type MS
* type ^short = "検体の材料コード。JLAC10 材料コードを指定する。"
* type.coding ..1 MS
* type.coding.system 1.. MS
* type.coding.system = "http://jpfhir.jp/eCheckup/CodeSystem/JLAC10-Specimen" (exactly)
* type.coding.system ^short = "JLAC10 材料コードを識別するURL。"
* type.coding.code 1.. MS
* type.coding.code ^short = "材料コード。"
* type.coding.code ^example.label = "for code"
* type.coding.code ^example.valueCode = #023
* type.coding.display MS
* type.coding.display ^short = "材料コードの表示名。"
* type.coding.display ^example.label = "for string"
* type.coding.display ^example.valueString = "血清"