Profile: Composition
Parent: $Composition
Id: jp-eCheckup-Composition
Title: "Compositionリソース　文書構成情報"
Description: "健診結果報告書FHIR documentにentry として格納される複数のリソースのうちの最初に出現するもので、この文書全体の構成目次に相当する情報や、セクションの構成を記述したものである。 健診結果報告書は、4.1.1「文書構造」で述べたように、健診項目、及び、問診項目を格納するセクション、及び、添付文書を格納する添付文書セクションから構成される。"
* ^meta.versionId = "146"
* ^meta.lastUpdated = "2021-07-02T06:57:21.704+00:00"
* ^meta.source = "#Gpf8nQiX6PsvLiPu"
* ^url = $Composition-Profile-Url
* ^version = "0.5.0"
* ^status = #active
* ^publisher = "HealthDataWorks"
* ^contact[0].name = "実装ガイド作成：小山内 尚、西山 喜樹、能崎 克行"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://healthdataworks.net/"
* ^contact[+].name = "仕様策定メンバー：厚生労働科学特別研究事業 診療情報提供書, 電子処方箋等の電子化医療文書の相互運用性確保のための標準規格の開発研究 研究班"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://std.jpfhir.jp/"
* . ^short = "Compositionリソースであることを示す"
* meta 1..1
* meta.profile 1..1 MS
* meta.profile ^short = "本リソースのプロファイルを識別するURLを指定する。"
* meta.profile = $Composition-Profile-Url (exactly)
* language = #ja (exactly)
* language MS
* language ^short = "日本語を指定する場合、”ja”を指定する。"
* language ^definition = "使用する場合は日本語環境(ja)を規定する。"
* text MS
* text ^short = "本リソースをテキストで表現したものを入れてもよい。内容を省略しても構わない。 このデータは人がこのリソースの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。 この内容と以降の構造化されたデータとの内容が不⼀致の場合には、この要素の内容は無視される。（本文書のすべてのリソースで同様とする）"
* text.status = #generated (exactly)
* text.status MS
* text.status ^short = "テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.div MS
* text.div ^example.label = "for xhtml"
* text.div ^example.valueString = "<div xmlns=\"http://www.w3.org/1999/xhtml\">xxx</div>"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber named 1 0..1 and
    http://hl7.org/fhir/us/ccda/StructureDefinition/DataEntererExtension named 2 0..1 
* extension[1] ^short = "健診結果報告書の文書バージョンを表す拡張「composition-clinicaldocument-versionNumber」。"
* extension[1].url MS
* extension[1].url ^short = "拡張を識別するURL。"
* extension[1].value[x] only string
* extension[1].valueString 1.. MS
* extension[1].valueString ^short = "文書のバージョン番号を表す文字列。"
* extension[1].valueString ^definition = "拡張「clinicaldocument-versionNumber」を使用する。\n\n本ドキュメントのバージョン番号を指定する。バージョン1.0の場合は記述の省略を認めるが、それ以外のバージョンの場合は記述を必須とする。バージョン毎の指定方法を以下に示す。なお、健診結果報告書仕様では、CDA R2のデータ型の制約からバージョン2.0を\"20\"と表記する必要があったが、本文書では、\"2.0\"と文字列で指定してよい。"
* extension[1].valueString ^example.label = "for string"
* extension[1].valueString ^example.valueString = "1.0"
* extension[2] ^short = "転記者(データを作成者に代わって転記入力した者)の情報を表す拡張「Data Enterer Extension」。"
* extension[2].url MS
* extension[2].url ^short = "拡張を識別するURL。"
* extension[2].value[x] only Reference(PractitionerRole)
* extension[2].valueReference 1.. MS
* extension[2].valueReference ^short = "転記者のPractitionerRoleリソースへの参照。"
* identifier MS
* identifier ^short = "このリソースの識別ID。実装に応じた健康診断結果報告書IDを記述する。"
* identifier ^definition = "実装に応じた健康診断結果報告書IDを記述する。\n\n健康診断結果報告書ID体系OIDとして、施設OIDをルートとする健康診断結果報告書個別ID発行規定OIDを施設ごとに決め、その規定にそった健康診断結果報告書個別IDをvalue要素に記述する方法も考えられる。"
* identifier.system 1.. MS
* identifier.system = "http://jpfhir.jp/fhir/eCheckup/documentIdentifier" (exactly)
* identifier.system ^short = "健康診断結果報告書IDの名前空間を表すURI。"
* identifier.value 1.. MS
* identifier.value ^short = "健康診断結果報告書ID"
* identifier.value ^example.label = "for string"
* identifier.value ^example.valueString = "12345"
* status MS
* status ^short = "この文書のステータス。"
* status ^example.label = "for code"
* status ^example.valueCode = #final
* type MS
* type from $JP-eCheckup-ValueSet-documentType.html (required)
* type ^short = "Compositionが表す文書の種類。本規格では、コード体系 文書区分コード（ http://jpfhir.jp/eCheckup/CodeSystem/documentType）より、「01:健康診断結果報告書」を指定する。"
* type.coding 1..1 MS
* type.coding.system 1.. MS
* type.coding.system = "http://jpfhir.jp/fhir/Common/CodeSystem/doc-typecodes" (exactly)
* type.coding.system ^short = "文書区分コードのコード体系を識別するURI。"
* type.coding.code 1..1 MS
* type.coding.code = #53576-5 (exactly)
* type.coding.code ^short = "文書区分コード。”53576-5:検診・健診報告書”を指定。"
* type.coding.display MS
* type.coding.display ^short = "文書区分コードの表示名。"
* type.coding.display ^example.label = "for string"
* type.coding.display ^example.valueString = "検診・健診報告書"
* category 1..1 MS
* category from $ValueSet-checkupReportCategory.html (required)
* category ^short = "報告区分を表すコードを設定する。このファイルが作成された目的や作成タイミングなどの情報を格納するために使用される。"
* category ^definition = "本健康診断結果報告書コードを規定する。coding.code要素には、5.1.2.1 「報告区分コード」を用いる。coding.system要素は「urn:oid:2.16.840.1.113883.2.2.1.6.1001」となる。coding.version要素、coding.dislay要素は省略してもよい。\n\n報告区分コードを任意に増設する場合には、増設したコードを含むコード体系を定義し、そのコード体系のコードを指定することにより追加が可能である。"
* category.coding 1..1 MS
* category.coding.system 1.. MS
* category.coding.system = "urn:oid:2.16.840.1.113883.2.2.1.6.1001" (exactly)
* category.coding.system ^short = "報告区分コードのコード体系を識別するURI。"
* category.coding.code 1.. MS
* category.coding.code ^short = "報告区分コード。"
* category.coding.code ^example.label = "for code"
* category.coding.code ^example.valueCode = #10
* category.coding.display MS
* category.coding.display ^short = "コードの表示名。"
* category.coding.display ^example.label = "for string"
* category.coding.display ^example.valueString = "特定健診"
* subject 1.. MS
* subject ^short = "患者情報を表すPatientリソースへの参照。"
* subject.reference 1.. MS
* subject.reference ^short = "PatientリソースのfullUrl要素に指定されるUUIDを指定。"
* subject.reference ^example.label = "for string"
* subject.reference ^example.valueString = "urn:uuid:1af0a9a6-a91d-3aef-fc4e-069995b89c4f"
* encounter 1.. MS
* encounter ^short = "健診を表すEncounterリソースへの参照。"
* encounter.reference 1.. MS
* encounter.reference ^short = "EncounterリソースのfullUrl要素に指定されるUUIDを指定。"
* encounter.reference ^example.label = "for string"
* encounter.reference ^example.valueString = "urn:uuid:7f60d206-66c5-4998-931e-86bf2b2d0bdc"
* date MS
* date ^short = "このリソースを作成または最後に編集した日時。ISO8601に準拠し、秒の精度まで記録し、タイムゾーンも付記する。午前0時を”24:00”と記録することはできないため”00:00”と記録すること。"
* author 2..2 MS
* author ^short = "本文書を作成した施設および作成者への参照。"
* author.reference 1.. MS
* author.reference ^short = "PractitionerRoleリソースのfullUrl要素に指定されるUUIDを指定。"
* author.reference ^example.label = "for string"
* author.reference ^example.valueString = "urn:uuid:7f60d206-66c5-4998-931e-86bf2b2d0bdc"
* title MS
* title ^short = "この文書の（人が読める）タイトル。"
* title ^example.label = "for string"
* title ^example.valueString = "健康診断結果のお知らせ"
* confidentiality 1.. MS
* confidentiality ^short = "本個人提供用健診結果報告書アクセス基準を記述する。"
* confidentiality ^definition = "バリューセット「V3 Value SetConfidentialityClassification」から適切なコードを選択する。しかるべき権限を持つ通常のアクセスを許可する場合はコード「N」を記述すればよい。"
* confidentiality ^example.label = "for code"
* confidentiality ^example.valueCode = #N
* custodian MS
* custodian ^short = "健診結果報告書の作成・修正をおこない報告書の管理責任を持つ施設（Organizationリソース）への参照。報告書作成機関と同一の場合、本要素を省略してもよい。"
* custodian.reference 1.. MS
* custodian.reference ^short = "custodianに対応するOrganizationリソースのfullUrl要素に指定されるUUIDを指定。"
* custodian.reference ^example.label = "for string"
* custodian.reference ^example.valueString = "urn:uuid:179f9f7f-e546-04c2-6888-a9e0b24e5720"
* event 1..1 MS
* event ^short = "健診実施情報として、健診がどの区分として実施されたかを示す健診プログラムサービスコードと、健診実施年月日を指定する。"
* event.code 1..1 MS
* event.code from $ValueSet-checkupProgramServiceCode.html (required)
* event.code.coding 1..1 MS
* event.code.coding ^short = "健診プログラムサービスコード。"
* event.code.coding.system 1.. MS
* event.code.coding.system = "urn:oid:2.16.840.1.113883.2.2.1.6.1002" (exactly)
* event.code.coding.system ^short = "健診プログラムサービスコードを識別するURI。"
* event.code.coding.code 1.. MS
* event.code.coding.code ^short = "健診プログラムサービスコード。"
* event.code.coding.code ^example.label = "for code"
* event.code.coding.code ^example.valueCode = #010
* event.code.coding.display MS
* event.code.coding.display ^short = "健診プログラムサービスコードの表示名。"
* event.code.coding.display ^example.label = "for string"
* event.code.coding.display ^example.valueString = "特定健診"
* event.period 1..1 MS
* event.period.start 1.. MS
* event.period.start ^short = "健診実施日。ISO8601に準拠yyyy-mm-dd形式で記述する。"
* event.period.end MS
* event.detail 1..1 MS
* event.detail ^short = "健診を表すEncounterリソースへの参照。"
* event.detail.reference 1.. MS
* event.detail.reference ^short = "参照されるEncounterリソースのfullUrl要素に指定されたUUID。"
* event.detail.reference ^example.label = "for string"
* event.detail.reference ^example.valueString = "urn:uuid:1af0a9a6-a91d-8aef-d14e-069795b89c9f"
* section MS
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding.code"
* section ^slicing.rules = #open
* section contains
    1 1..1 MS and
    2 1..1 MS and
    3 1..1 MS
* section[1] ^short = "健診セクション。健診項目のうち問診以外の項目に関連するリソースが全て本セクションに含まれる。"
* section[=].title 1.. MS
* section[=].title = "健診情報" (exactly)
* section[=].title ^short = "セクションタイトル。"
* section[=].code 1.. MS
* section[=].code from $ValueSet-sectionCode.html (required)
* section[=].code.coding 1..1 MS
* section[=].code.coding.system 1.. MS
* section[=].code.coding.system = "urn:oid:1.2.392.200119.6.1002" (exactly)
* section[=].code.coding.system ^short = "セクション区分コードのコード体系を識別するURI。"
* section[=].code.coding.code 1.. MS
* section[=].code.coding.code = #01910 (exactly)
* section[=].code.coding.code ^short = "健診セクションを表すセクション区分のコード値。"
* section[=].code.coding.display MS
* section[=].code.coding.display ^short = "セクション区分コードの表示名。"
* section[=].code.coding.display ^example.label = "for string"
* section[=].code.coding.display ^example.valueString = "健診セクション"
* section[=].text MS
* section[=].text ^short = "セクションの内容を表す文字列。書式は4.2.2.2.2「テキスト部（ナラティブ）仕様」の本文を参照。"
* section[=].text.status = #generated (exactly)
* section[=].text.status MS
* section[=].text.div MS
* section[=].text.div ^short = "本セクションの内容をテキストで表現した文字列を入れてもよい。内容を省略しても構わない。 このデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。"
* section[=].entry MS
* section[=].entry ^slicing.discriminator.type = #value
* section[=].entry ^slicing.discriminator.path = "reference"
* section[=].entry ^slicing.rules = #open
* section[=].entry contains
    1 0..* and
    2 0..* 
* section[=].entry[1] ^short = "健診情報セクションに含まれるリソースの参照。検査項目を表すObservationリソースが含まれる。"
* section[=].entry[=].reference 1.. MS
* section[=].entry[=].reference ^short = "参照先のリソースのfullUrl要素に指定されるUUID。"
* section[=].entry[=].reference ^example.label = "for string"
* section[=].entry[=].reference ^example.valueString = "urn:uuid:ef7892cc-fb3a-b951-9ac7-f8cd6c746f0a"
* section[=].entry[+] ^short = "健診情報セクションに含まれる保険証情報および受診券情報をあらわすCoverageリソースへの参照。"
* section[=].entry[=].reference 1.. MS
* section[=].entry[=].reference ^short = "参照先リソースのfullUrl要素に指定されるUUIR。"
* section[=].entry[=].reference ^example.label = "for string"
* section[=].entry[=].reference ^example.valueString = "urn:uuid:38f45298-ea42-9f15-7fb2-48ed899d3ab6"
* section[+] ^short = "問診セクション。健診項目のうち問診項目に関連するリソースが全て本セクションに含まれる。"
* section[=].title 1.. MS
* section[=].title = "問診情報" (exactly)
* section[=].title ^short = "セクションタイトル。"
* section[=].code 1.. MS
* section[=].code from $ValueSet-sectionCode.html (required)
* section[=].code.coding 1..1 MS
* section[=].code.coding.system 1.. MS
* section[=].code.coding.system = "urn:oid:1.2.392.200119.6.1002" (exactly)
* section[=].code.coding.system ^short = "セクション区分コードのコード体系を識別するURI。"
* section[=].code.coding.code 1.. MS
* section[=].code.coding.code = #01920 (exactly)
* section[=].code.coding.code ^short = "問診セクションを表すセクション区分のコード値。"
* section[=].code.coding.display MS
* section[=].code.coding.display ^short = "セクション区分コードの表示名。"
* section[=].code.coding.display ^example.label = "for string"
* section[=].code.coding.display ^example.valueString = "セクション区分コードの表示名。"
* section[=].text MS
* section[=].text ^short = "セクションの内容を表す文字列。"
* section[=].text.status = #generated (exactly)
* section[=].text.status MS
* section[=].text.div MS
* section[=].text.div ^short = "本セクションの内容をテキストで表現した文字列を入れてもよい。内容を省略しても構わない。 このデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。"
* section[=].entry 1.. MS
* section[=].entry ^short = "問診情報セクションに含まれるリソースの参照。検査項目を表すObservationリソースが含まれる。"
* section[=].entry.reference 1.. MS
* section[=].entry.reference ^short = "参照先のリソースのfullUrl要素に指定されるUUID。"
* section[=].entry.reference ^example.label = "for string"
* section[=].entry.reference ^example.valueString = "urn:uuid:ef7892cc-fb3a-b951-9ac7-f8cd6c746f0a"
* section[+] ^short = "添付書類セクション。健診結果報告書に関連する添付処理を表すリソースが全て本セクションに含まれる。"
* section[=].title 1.. MS
* section[=].title = "添付書類" (exactly)
* section[=].title ^short = "セクションタイトル。"
* section[=].code 1.. MS
* section[=].code from $ValueSet-sectionCode.html (required)
* section[=].code.coding 1..1 MS
* section[=].code.coding.system 1.. MS
* section[=].code.coding.system = "urn:oid:1.2.392.200119.6.1002" (exactly)
* section[=].code.coding.system ^short = "セクション区分コードのコード体系を識別するURI。"
* section[=].code.coding.code 1.. MS
* section[=].code.coding.code = #01995 (exactly)
* section[=].code.coding.code ^short = "添付書類セクションを表すセクション区分のコード値。"
* section[=].code.coding.display MS
* section[=].code.coding.display ^short = "セクション区分コードの表示名。"
* section[=].code.coding.display ^example.label = "for string"
* section[=].code.coding.display ^example.valueString = "添付書類セクション"
* section[=].text MS
* section[=].text ^short = "セクションの内容を表す文字列。"
* section[=].text.status = #generated (exactly)
* section[=].text.status MS
* section[=].text.div MS
* section[=].text.div ^short = "本セクションの内容をテキストで表現した文字列を入れてもよい。内容を省略しても構わない。 このデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。"
* section[=].entry 1.. MS
* section[=].entry ^short = "添付書類セクションに含まれるリソースの参照。添付書類を表すDocumentReferenceリソースが含まれる。"
* section[=].entry.reference 1.. MS
* section[=].entry.reference ^short = "参照先のリソースのfullUrl要素に指定されるUUID。"
* section[=].entry.reference ^example.label = "for string"
* section[=].entry.reference ^example.valueString = "urn:uuid:ef7892cc-fb3a-b951-9ac7-f8cd6c746f0a"