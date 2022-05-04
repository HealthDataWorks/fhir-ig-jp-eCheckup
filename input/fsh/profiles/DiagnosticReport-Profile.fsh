Profile: DiagnosticReport
Parent: $DiagnosticReport
Id: jp-eCheckup-DiagnosticReport
Title: "DiagnosticReportリソース　検査報告書情報"
* ^meta.versionId = "29"
* ^meta.lastUpdated = "2021-07-02T10:53:58.125+00:00"
* ^meta.source = "#I8r46qRxVFdRE6vN"
* ^url = $DiagnosticReport-Profile-Url 
* ^version = "0.5.0"
* ^status = #active
* ^publisher = "HealthDataWorks"
* ^contact[0].name = "実装ガイド作成：小山内 尚、西山 喜樹、能崎 克行"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://healthdataworks.net/"
* ^contact[+].name = "仕様策定メンバー：厚生労働科学特別研究事業 診療情報提供書, 電子処方箋等の電子化医療文書の相互運用性確保のための標準規格の開発研究 研究班"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://std.jpfhir.jp/"
* . ^short = "DiagnosticReportリソースであることを示す"
* meta 1..1 MS
* meta.profile 1..1 MS
* meta.profile ^short = "本リソースのプロファイルを識別するURLを指定する。"
* meta.profile = $DiagnosticReport-Profile-Url (exactly)
* text MS
* text ^short = "本リソースをテキストで表現したものを入れてもよい。内容を省略しても構わない。このデータは人がこのリソースの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。 この内容と以降の構造化されたデータとの内容が不一致の場合には、この要素の内容は無視される。（本文書のすべてのリソースで同様とする）"
* text.status = #generated (exactly)
* text.status MS
* text.status ^short = "テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.div MS
* text.div ^example.label = "for xhtml"
* text.div ^example.valueString = "<div xmlns=\"http://www.w3.org/1999/xhtml\">xxx</div>"
* status = #final (exactly)
* status MS
* status ^short = "\"final\" 固定。"
* code MS
* code from ConsentContentCodes (required)
* code ^short = "報告書種別を表すコード。例えばLOINCコードを使用する。"
* code.coding 1.. MS
* code.coding.system 1.. MS
* code.coding.system ^short = "報告書種別コード体系を識別するURI。"
* code.coding.system ^example.label = "for uri"
* code.coding.system ^example.valueUri = "http://loinc.org"
* code.coding.code 1.. MS
* code.coding.code ^short = "報告書種別コード。"
* code.coding.code ^example.label = "for code"
* code.coding.code ^example.valueCode = #18748-4
* code.coding.display MS
* code.coding.display ^short = "コードの表示名。"
* code.coding.display ^example.label = "for string"
* code.coding.display ^example.valueString = "画像検査報告書。"
* media MS
* media ^short = "検査報告書に含まれる検査画像。"
* media.comment MS
* media.comment ^short = "検査報告書に含まれる検査画像に対するコメント。"
* media.comment ^example.label = "for string"
* media.comment ^example.valueString = "腹部エコー"
* media.link MS
* media.link ^short = "検査報告書に含まれる検査画像を表すMediaリソースへの参照。"
* media.link.reference 1.. MS
* media.link.reference ^short = "参照されるMediaリソースのfullUrl要素に指定されるUUID。"
* media.link.reference ^example.label = "for string"
* media.link.reference ^example.valueString = "urn:uuid:673f8db5-0ffd-4395-9657-6da00420bbc3"