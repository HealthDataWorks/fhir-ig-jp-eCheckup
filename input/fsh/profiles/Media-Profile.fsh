Profile: Media
Parent: $Media
Id: jp-eCheckup-Media
Title: "Mediaリリース　画像情報"
* ^meta.versionId = "19"
* ^meta.lastUpdated = "2021-07-01T12:48:24.876+00:00"
* ^meta.source = "#43Gt1a3JPsCb5Mpb"
* ^url = "https://igs.healthdataworks.net/jp-eCheckup/StructureDefinition-jp-eCheckup-Media.html"
* ^version = "0.5.0"
* ^status = #active
* ^publisher = "HealthDataWorks"
* ^contact[0].name = "実装ガイド作成：小山内 尚、西山 喜樹、能崎 克行"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://healthdataworks.net/"
* ^contact[+].name = "仕様策定メンバー：厚生労働科学特別研究事業 診療情報提供書, 電子処方箋等の電子化医療文書の相互運用性確保のための標準規格の開発研究 研究班"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://std.jpfhir.jp/"
* . ^short = "Mediaリソースであることを示す"
* meta 1..1 MS
* meta.profile 1..1 MS
* meta.profile ^short = "本リソースのプロファイルを識別するURLを指定する。"
* meta.profile = $Media-Profile-Url (exactly)
* text MS
* text ^short = "本リソースをテキストで表現したものを入れてもよい。内容を省略しても構わない。 このデータは人がこのリソースの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。 この内容と以降の構造化されたデータとの内容が不一致の場合には、この要素の内容は無視される。（本文書のすべてのリソースで同様とする）"
* text.status = #generated (exactly)
* text.status MS
* text.status ^short = "テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.div MS
* text.div ^example.label = "for xhtml"
* text.div ^example.valueString = "<div xmlns=\"http://www.w3.org/1999/xhtml\">xxx</div>"
* status = #completed (exactly)
* status MS
* status ^short = "\"completed\" 固定。"
* content MS
* content ^short = "添付ファイルデータ。URLによる外部参照する方法法と、データ中に、バイナリデータを内包する方法の2つの添付方法がある。"
* content.contentType MS
* content.contentType ^short = "添付ファイルのコンテントタイプ。MimeTypeコード体系より指定する。"
* content.contentType ^example.label = "for code"
* content.contentType ^example.valueCode = #application/dicom
* content.data MS
* content.data ^short = "添付ファイルをデータに内包する場合の、Base64符号化されたデータ。"
* content.url MS
* content.url ^short = "添付ファイルを外部参照する場合の参照URL。"
* content.url ^example.label = "for url"
* content.url ^example.valueUrl = "http://10.1.2.3:1000/wado?requestType=WADO&amp;wado_details..."
* content.hash MS
* content.hash ^short = "添付ファイルのSHA-1によるハッシュ値。"
* content.title MS
* content.title ^short = "添付ファイルを説明するタイトル文字列。"
* content.title ^example.label = "for string"
* content.title ^example.valueString = "胸部X線撮影画像"