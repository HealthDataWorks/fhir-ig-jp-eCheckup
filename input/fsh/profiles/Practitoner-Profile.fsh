Profile: Practitoner
Parent: Practitioner
Id: jp-eCheckup-Practitoner
Title: "Practitionerリソース　検診結果報告書作成者情報"
Description: "健康診断結果報告書の作成者の記述が必要な場合には、PractitionerRoleリソースから参照されるPractitionerリソースを使用する。"
* ^meta.versionId = "32"
* ^meta.lastUpdated = "2021-07-02T06:44:15.920+00:00"
* ^meta.source = "#th7sVh2Ft66lbOlT"
* ^url = "https://igs.healthdataworks.net/jp-eCheckup/StructureDefinition-jp-eCheckup-Practitoner.html"
* ^version = "0.5.0"
* ^status = #active
* ^publisher = "HealthDataWorks"
* ^contact[0].name = "実装ガイド作成：小山内 尚、西山 喜樹、能崎 克行"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://healthdataworks.net/"
* ^contact[+].name = "仕様策定メンバー：厚生労働科学特別研究事業 診療情報提供書, 電子処方箋等の電子化医療文書の相互運用性確保のための標準規格の開発研究 研究班"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://std.jpfhir.jp/"
* . ^short = "Practitionerリソースであることを示す"
* text MS
* text ^short = "本リソースをテキストで表現したものを入れてもよい。"
* text.status = #generated (exactly)
* text.status MS
* text.status ^short = "テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.div MS
* text.div ^example.label = "for xhtml"
* text.div ^example.valueString = "<div xmlns=\"http://www.w3.org/1999/xhtml\">xxx</div>"
* name MS
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "extension.valueCode"
* name ^slicing.rules = #open
* name contains
    1 1..1 MS and
    2 ..1 MS
* name[1] ^short = "健診結果報告書作成氏名"
* name[=].extension 1..1 MS
* name[=].extension ^short = "氏名が漢字表記かカナ表記かを区別するための拡張「iso21090-EN-representation」。"
* name[=].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation" (exactly)
* name[=].extension.url MS
* name[=].extension.url ^short = "拡張を識別するURL。"
* name[=].extension.value[x] 1.. MS
* name[=].extension.value[x] only code
* name[=].extension.value[x] = #IDE (exactly)
* name[=].extension.value[x] ^short = "漢字表記であることを示す固定値。"
* name[=].text 1.. MS
* name[=].text ^short = "氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。"
* name[=].text ^example.label = "for string"
* name[=].text ^example.valueString = "神奈川花子"
* name[=].family MS
* name[=].family ^short = "氏名の姓。"
* name[=].family ^example.label = "for string"
* name[=].family ^example.valueString = "神奈川"
* name[=].given MS
* name[=].given ^short = "氏名の名。ミドルネームがある場合には、ミドルネーム、名の順で繰り返す。"
* name[=].given ^example.label = "for string"
* name[=].given ^example.valueString = "花子"
* name[+] ^short = "よみ（カタカナ）"
* name[=].extension 1..1 MS
* name[=].extension ^short = "氏名が漢字表記かカナ表記かを区別するための拡張「iso21090-EN-representation」。"
* name[=].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation" (exactly)
* name[=].extension.url MS
* name[=].extension.url ^short = "拡張を識別するURL。"
* name[=].extension.value[x] 1.. MS
* name[=].extension.value[x] only code
* name[=].extension.value[x] = #SYL (exactly)
* name[=].text 1.. MS
* name[=].text ^short = "カナ氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。カタカナはJIS X 0208のカタカナ（全角カナ）みとし、JIS X 0201のカタカナ（半角カナ）は使用してはならない。"
* name[=].text ^example.label = "for string"
* name[=].text ^example.valueString = "カナガワハナコ"
* name[=].family MS
* name[=].family ^short = "カナ氏名の姓。"
* name[=].family ^example.label = "for string"
* name[=].family ^example.valueString = "カナガワ"
* name[=].given MS
* name[=].given ^short = "カナ氏名の名。ミドルネームがある場合には、ミドルネーム、名の順で繰り返す。"
* name[=].given ^example.label = "for string"
* name[=].given ^example.valueString = "ハナコ"