Profile: DocumentReference
Parent: $DocumentReference
Id: jp-eCheckup-DocumentReference
Title: "DocumentReferenceリソース　添付文書情報"
* ^meta.versionId = "26"
* ^meta.lastUpdated = "2021-07-01T12:42:52.388+00:00"
* ^meta.source = "#9CbJQv3VmnZoY2Bf"
* ^url = "https://igs.healthdataworks.net/jp-eCheckup/StructureDefinition-jp-eCheckup-DocumentReference.html"
* ^version = "0.5.0"
* ^status = #active
* ^publisher = "HealthDataWorks"
* ^contact[0].name = "実装ガイド作成：小山内 尚、西山 喜樹、能崎 克行"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://healthdataworks.net/"
* ^contact[+].name = "仕様策定メンバー：厚生労働科学特別研究事業 診療情報提供書, 電子処方箋等の電子化医療文書の相互運用性確保のための標準規格の開発研究 研究班"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://std.jpfhir.jp/"
* . ^short = "DocumentReferenceリソースであることを示す"
* text MS
* text ^short = "本リソースをテキストで表現したものを入れてもよい。内容を省略しても構わない。 このデータは人がこのリソースの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。 この内容と以降の構造化されたデータとの内容が不一致の場合には、この要素の内容は無視される。（本文書のすべてのリソースで同様とする）"
* text.status = #generated (exactly)
* text.status MS
* text.status ^short = "テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.div MS
* text.div ^example.label = "for xhtml"
* text.div ^example.valueString = "<div xmlns=\"http://www.w3.org/1999/xhtml\">xxx</div>"
* status = #current (exactly)
* status MS
* status ^short = "\"current\" 固定。"
* description MS
* description ^short = "人が読むことのできる添付文書の説明"
* content ..1 MS
* content ^short = "base64Binary型でエンコードされた添付文書データ。"
* content.attachment MS
* content.attachment ^short = "基底仕様上は1つのリソースで複数のファイルを添付することが可能であるが、本書では、１つのリソースに対して表現可能な添付ファイルは1つまでとする。"
* content.attachment.contentType 1.. MS
* content.attachment.contentType ^short = "添付ファイルのコンテントタイプ。MimeTypeコード体系より指定する。"
* content.attachment.contentType ^example.label = "for code"
* content.attachment.contentType ^example.valueCode = #application/dicom
* content.attachment.data MS
* content.attachment.data ^short = "添付ファイルをデータに内包する場合の、Base64符号化されたデータ。"
* content.attachment.url MS
* content.attachment.url ^short = "添付ファイルを外部参照する場合の参照URL。"
* content.attachment.url ^example.label = "for url"
* content.attachment.url ^example.valueUrl = "http://10.1.2.3:1000/wado?requestType=WADO&amp;wado_details..."
* content.attachment.hash MS
* content.attachment.hash ^short = "添付ファイルのSHA-1によるハッシュ値。"
* content.attachment.title MS
* content.attachment.title ^short = "添付ファイルを説明するタイトル文字列。"
* content.attachment.title ^example.label = "for string"
* content.attachment.title ^example.valueString = "胸部X線撮影画像"
* content.format MS
* content.format ^short = "指定可能な場合、添付ファイルのフォーマットを指定。"
* content.format.system 1.. MS
* content.format.system = "http://jpfhir.jp/eCheckup/CodeSystem/attachementFormat" (exactly)
* content.format.system ^short = "フォーマットを規定するコード体系「http://jpfhir.jp/eCheckup/CodeSystem/attachementFormat」を指定。"
* content.format.code 1.. MS
* content.format.code ^short = "フォーマットコード。CDA R2形式特定健診の場合、”cdar2_hc08_v08”を指定。JAHIS 健康診断報告書規格の場合、”cdar2_jahis_18007”を指定。"
* content.format.code ^example.label = "for code"
* content.format.code ^example.valueCode = #cdar2_hc08_v08
* content.format.display MS
* content.format.display ^short = "フォーマットコードの表示名。"
* context MS
* context.related ..1 MS
* context.related ^short = "必要に応じて、添付文書に関連する検査結果（Observationリソース）への参照を記録することが可能。"
* context.related.reference 1.. MS
* context.related.reference ^short = "Observationリソースへの参照。"
* context.related.reference ^example.label = "for string"
* context.related.reference ^example.valueString = "urn:uuid:673f8db5-0ffd-4395-7457-6da00420bdc1"