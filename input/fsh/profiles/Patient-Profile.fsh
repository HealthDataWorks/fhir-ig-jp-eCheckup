Profile: Patient
Parent: $Patient
Id: jp-eCheckup-Patient
Title: "Patientリソース　受診者情報"
Description: "受診者情報はPatientリソースで記述する。必須（1..1）項目である。１つの健診結果報告書に対して関連する受診者は1名と限定する。"
* ^meta.versionId = "135"
* ^meta.lastUpdated = "2021-07-01T13:02:20.509+00:00"
* ^meta.source = "#FzQFBAaQ8ezew0cZ"
* ^url = $Patient-Profile-Url
* ^version = "0.5.0"
* ^publisher = "HealthDataWorks"
* ^contact[0].name = "実装ガイド作成：小山内 尚、西山 喜樹、能崎 克行"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://healthdataworks.net/"
* ^contact[+].name = "仕様策定メンバー：厚生労働科学特別研究事業 診療情報提供書, 電子処方箋等の電子化医療文書の相互運用性確保のための標準規格の開発研究 研究班"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://std.jpfhir.jp/"
* . ^short = "Patientリソースであることを示す"
* meta 1..1 MS
* meta.profile 1..1 MS
* meta.profile ^short = "本リソースのプロファイルを識別するURLを指定する。"
* meta.profile = $Patient-Profile-Url (exactly)
* text MS
* text ^short = "本リソースをテキストで表現したものを入れてもよい。内容を省略しても構わない。 このデータは人がこのリソースの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。この内容と以降の構造化されたデータとの内容が不一致の場合には、この要素の内容は無視される。（本文書のすべてのリソースで同様とする）"
* text.status = #generated (exactly)
* text.status MS
* text.status ^short = "テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.div MS
* text.div ^example.label = "for xhtml"
* text.div ^example.valueString = "<div xmlns=\"http://www.w3.org/1999/xhtml\">xxx</div>"
* identifier 1..1 MS
* identifier ^short = "社員番号や健診実施機関受診者整理番号。"
* identifier ^definition = "健診実施機関受診者整理ID、所属機関受診者IDなど複数のIDの記述必要な場合、それぞれ医療機関等の識別とともにidentifier要素で記述する。本IDは複数件、目的毎に記述可能である。\n\n例えば、健診実施機関における受診者整理番号を記述するためには、健診実施機関番号を含む健診実施機関OIDをsystem要素に指定し、value要素に受診者整理番号を記述する。\n\n健診結果報告書規格では、保険者番号や被保険者証記号・番号も受診者IDとして記載していたが、本規格では、保険情報を表すCoverage要素、及び、保険者を表すOrganization要素にて表現することに注意する。"
* identifier.system 1.. MS
* identifier.value 1.. MS
* identifier ^short = "社員番号や健診実施機関受診者整理番号。"
* identifier.system ^short = "末尾の 1[保険医療機関コード(10 桁)]は、保険医療機関コード(10桁)の先頭に1をつけた11桁とした文字列。"
* identifier.system ^example.label = "for uri"
* identifier.system ^example.valueUri = "urn:oid:1.2.392.200119.6.102.19999999999"
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "extension.valueCode"
* name ^slicing.rules = #open
* name ^definition = "受診者の氏名は、①姓、名を区別しないフラットな形式と、②姓、名をそれぞれ異なる要素で構造化して記述する構造化形式の2種類の記述が可能である。\n\n* フリガナ：全角カタカナで記述し必須項目である。\n* 姓名：漢字、ひらがな、カタカナ、英数字を含めた正しい名前のつづりで記述された姓、名。\n* ローマ字：（オプション）一部機器などで日本語処理が弱いシステムを支援するなどのために使用する。\n\n注：構造化形式において、姓名が分離できない場合は、姓の部分に記述し、ミドル名がある場合は名を繰り返して記述する。"
* name contains
    1 ..1 MS and
    2 ..1 MS and
    3 ..1 MS
* name[1] ^short = "受診者氏名 漢字表記"
* name[=].extension 1..1 MS
* name[=].extension ^short = "氏名が漢字表記かカナ表記かを区別するための拡張「iso21090-EN-representation」。"
* name[=].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation" (exactly)
* name[=].extension.url MS
* name[=].extension.url ^short = "拡張を識別するURL。"
* name[=].extension.value[x] 1.. MS
* name[=].extension.value[x] only code
* name[=].extension.value[x] = #IDE (exactly)
* name[=].extension.value[x] ^short = "漢字表記であることを示す固定値。"
* name[=].use 1.. MS
* name[=].use = #official (exactly)
* name[=].use ^short = "氏名が正式名称であることを明示するために、NameUseバリューセット（http://hl7.org/fhir/ValueSet/name-use）より「official」を必須で設定する。"
* name[=].text 1.. MS
* name[=].text ^short = "氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。"
* name[=].text ^example.label = "for string"
* name[=].text ^example.valueString = "東京太郎"
* name[=].family MS
* name[=].family ^short = "氏名の姓。"
* name[=].family ^example.label = "for string"
* name[=].family ^example.valueString = "東京"
* name[=].given MS
* name[=].given ^short = "氏名の名。ミドルネームがある場合には、ミドルネーム、名の順で繰り返す。"
* name[=].given ^example.label = "for string"
* name[=].given ^example.valueString = "太郎"
* name[+] ^short = "よみ（カタカナ）"
* name[=].extension 1..1 MS
* name[=].extension ^short = "氏名が漢字表記かカナ表記かを区別するための拡張「iso21090-EN-representation」。"
* name[=].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation" (exactly)
* name[=].extension.url MS
* name[=].extension.url ^short = "拡張を識別するURL。"
* name[=].extension.value[x] 1.. MS
* name[=].extension.value[x] only code
* name[=].extension.value[x] = #SYL (exactly)
* name[=].extension.value[x] ^short = "カナ表記であることを示す固定値。"
* name[=].use 1.. MS
* name[=].use = #official (exactly)
* name[=].use ^short = "氏名が正式名称であることを明示するために、NameUseバリューセット（http://hl7.org/fhir/ValueSet/name-use）より「official」を必須で設定する。"
* name[=].text 1.. MS
* name[=].text ^short = "カナ氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。カタカナはJIS X0208のカタカナ（全角カナ）みとし、JIS X0201のカタカナ（半角カナ）は使用してはならない。"
* name[=].text ^example.label = "for string"
* name[=].text ^example.valueString = "トウキョウタロウ"
* name[=].family MS
* name[=].family ^short = "カナ氏名の姓。"
* name[=].family ^example.label = "for string"
* name[=].family ^example.valueString = "トウキョウ"
* name[=].given MS
* name[=].given ^short = "カナ氏名の名。ミドルネームがある場合には、ミドルネーム、名の順で繰り返す。"
* name[=].given ^example.label = "for string"
* name[=].given ^example.valueString = "タロウ"
* name[+] ^short = "よみ（ローマ字）"
* name[=].extension 1..1 MS
* name[=].extension ^short = "氏名が漢字表記かカナ表記かを区別するための拡張「iso21090-EN-representation」。"
* name[=].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation" (exactly)
* name[=].extension.url MS
* name[=].extension.url ^short = "拡張を識別するURL。"
* name[=].extension.value[x] 1.. MS
* name[=].extension.value[x] only code
* name[=].extension.value[x] = #ABC (exactly)
* name[=].extension.value[x] ^short = "ローマ字表記であることを示す固定値。"
* name[=].use 1.. MS
* name[=].use = #official (exactly)
* name[=].use ^short = "氏名が正式名称であることを明示するために、NameUseバリューセット（http://hl7.org/fhir/ValueSet/name-use）より「official」を必須で設定する。"
* name[=].text 1.. MS
* name[=].text ^short = "ローマ字氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。"
* name[=].text ^example.label = "for string"
* name[=].text ^example.valueString = "TOKYO TARO"
* name[=].family MS
* name[=].family ^short = "ローマ字氏名の姓。"
* name[=].family ^example.label = "for string"
* name[=].family ^example.valueString = "TOKYO"
* name[=].given MS
* name[=].given ^short = "ローマ字氏名の名。ミドルネームがある場合には、ミドルネーム、名の順で繰り返す。"
* name[=].given ^example.label = "for string"
* name[=].given ^example.valueString = "TARO"
* telecom ..1 MS
* telecom ^short = "受診者連絡先電話番号。"
* telecom ^definition = "telecom要素にContactPoint型で記述する。system要素には、HL7 ContactPointSystemバリューセット（http://hl7.org/fhir/ValueSet/contact-point-system）から[連絡先種別](https://trifolia-fhir.lantanagroup.com/igs/lantana_hapi_r4/jp-eCheckup/CodeSystem-CodeSystem23.html)のコードを指定する。value要素にはダイヤル番号を記述する。電話番号には見やすいようにセパレータを含んでもよい。use要素には、HL7 ContactPointUseバリューセット（http://hl7.org/fhir/ValueSet/contact-point-user）から[電話種別](https://trifolia-fhir.lantanagroup.com/igs/lantana_hapi_r4/jp-eCheckup/CodeSystem-CodeSystem24.html)のコードを記述する。\n"
* telecom.system 1.. MS
* telecom.system ^short = "電話番号の連絡先種別を表すコード体系を識別するコード。ContactPointSystemから指定。"
* telecom.system ^example.label = "for code"
* telecom.system ^example.valueCode = #phone
* telecom.value 1..
* telecom.value ^short = "電話番号文字列。見易さのためにハイフンを入れてもよい。"
* telecom.value ^example.label = "for string"
* telecom.value ^example.valueString = "03-1111-2222"
* telecom.use 1.. MS
* telecom.use ^short = "電話番号種別を表すコード。ContactPointUseから指定。"
* telecom.use ^example.label = "for code"
* telecom.use ^example.valueCode = #home
* gender 1.. MS
* gender ^short = "受診者の性別。\"male\"または\"female\"。"
* gender ^definition = "HL7 AdministrativeGenderバリューセット（\"http://hl7.org/fhir/ValueSet/administrative-gender\"）から[性別コード](https://trifolia-fhir.lantanagroup.com/igs/lantana_hapi_r4/jp-eCheckup/CodeSystem-CodeSystem25.html)を指定する。"
* gender ^example.label = "for code"
* gender ^example.valueCode = #male
* birthDate 1.. MS
* birthDate ^short = "受診者の生年月日。ISO8601に準拠して\"yyyy-mm-dd\"形式。"
* birthDate ^definition = "YYYY-MM-DDで記述する。西暦表示で記述する。和暦表示などを行う場合は、スタイルシート等により内部表現（西暦）から[和暦変換](https://trifolia-fhir.lantanagroup.com/igs/lantana_hapi_r4/jp-eCheckup/CodeSystem-CodeSystem26.html)を行う。\n\n年齢は本文書では直接記述しないため、生年月日と記述日（Composition.date）との差により算出する。\n"
* birthDate ^example.label = "for date"
* birthDate ^example.valueDate = "1920-02-11"
* address ..1 MS
* address ^short = "受診者の住所。"
* address ^definition = "address要素にAddress型で記述する。\n\n特定健診と併用する場合、住所情報は、①郵便番号部とそれ以降のテキスト部を記述するフラットな形式で記述する。別の方法とし、②国名、郵便番号部、都道府県部、市区郡部、区町村丁字番地等部をそれぞれ異なる要素で構造化して記述する構造化形式での記述も可能である。\n\n① 郵便番号部とそれ以降のテキスト部で表記\n\n*  郵便番号：postalCode要素に記述\n*  テキスト部： text要素に記述\n\n②構造化形式による表記\n\n*  都道府県：state要素に記述\n*  市および都23区、郡：city要素に記述\n*  区町村丁字番地等：line要素に記述\n*  受診者住所の建物名等部：line要素の記述\n*  郵便番号：postalCode要素に記述\n*  日本：country要素に\"JP\"を記述\n"
* address.text 1.. MS
* address.text ^short = "住所文字列。"
* address.text ^example.label = "for string"
* address.text ^example.valueString = "神奈川県横浜市港区１－２－３"
* address.postalCode 1.. MS
* address.postalCode ^short = "郵便番号。"
* address.postalCode ^example.label = "for string"
* address.postalCode ^example.valueString = "123-4567"
* address.country 1.. MS
* address.country ^short = "居住地が国内の場合「JP」固定。"
* address.country ^example.label = "for string"
* address.country ^example.valueString = "JP"
* contact ..1 MS
* contact ^short = "受診者の勤務先情報。"
* contact.extension ..1 MS
* contact.extension only Position
* contact.extension ^short = "受診者の勤務先での役割、役職情報。"
* contact.relationship 1..1 MS
* contact.relationship.coding 1..1 MS
* contact.relationship.coding ^short = "関係を表す「受診者追加情報種別コード」から、「1000:勤務先」または「1010:事業場」"
* contact.relationship.coding.system 1.. MS
* contact.relationship.coding.system = "urn:oid:2.16.840.1.113883.2.2.1.6.5006" (exactly)
* contact.relationship.coding.system ^short = "コード体系を識別するOID。"
* contact.relationship.coding.code 1.. MS
* contact.relationship.coding.code ^short = "「勤務先」または「事業場」を表すコード。"
* contact.relationship.coding.code ^example.label = "for code"
* contact.relationship.coding.code ^example.valueCode = #1000
* contact.relationship.coding.display MS
* contact.relationship.coding.display ^short = "コードの表示名。"
* contact.relationship.coding.display ^example.label = "for string"
* contact.relationship.coding.display ^example.valueString = "勤務先"
* contact.organization 1.. MS
* contact.organization ^short = "勤務先または事業場を表すOrganizationリソースへの参照"
* contact.organization.reference 1.. MS
* contact.organization.reference ^short = "参照先のリソースのfullUrl要素に指定されるUUIDを指定。"
* contact.organization.reference ^example.label = "for string"
* contact.organization.reference ^example.valueString = "urn:uuid:7f60d206-66c5-4998-931e-86bf2b2d0bdc"
* contact.period MS
* contact.period ^short = "雇入年月日"
* contact.period.start 1.. MS