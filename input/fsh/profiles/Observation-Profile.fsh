Profile: Observation1
Parent: $Observation
Id: jp-eCheckup-Observation
Title: "Observationリソース　検査項目パターン情報"
* ^meta.versionId = "106"
* ^meta.lastUpdated = "2021-07-02T11:38:28.609+00:00"
* ^meta.source = "#EbxYT7SLZtyjXzHj"
* ^url = "https://igs.healthdataworks.net/jp-eCheckup/StructureDefinition-jp-eCheckup-Observation.html"
* ^version = "0.5.0"
* ^publisher = "HealthDataWorks"
* ^contact[0].name = "実装ガイド作成：小山内 尚、西山 喜樹、能崎 克行"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://healthdataworks.net/"
* ^contact[+].name = "仕様策定メンバー：厚生労働科学特別研究事業 診療情報提供書, 電子処方箋等の電子化医療文書の相互運用性確保のための標準規格の開発研究 研究班"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://std.jpfhir.jp/"
* . ^short = "Observationリソースであることを示す"
* text MS
* text ^short = "本リソースをテキストで表現したものを入れてもよい。内容を省略しても構わない。 このデータは人がこのリソースの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。この内容と以降の構造化されたデータとの内容が不一致の場合には、この要素の内容は無視される。（本分書のすべてのリソースで同様とする）"
* text.status = #generated (exactly)
* text.status MS
* text.status ^short = "テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.div MS
* text.div ^example.label = "for xhtml"
* text.div ^example.valueString = "<div xmlns=\"http://www.w3.org/1999/xhtml\">xxx</div>"
* status = #final (exactly)
* status MS
* status ^short = "テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* category 1..1 MS
* category from $observation-category_1 (required)
* category ^short = "検査項目の区分を表すカテゴリコード。"
* category.coding 1..1 MS
* category.coding.system 1.. MS
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
* category.coding.system ^short = "コード体系を識別するURI。"
* category.coding.code 1.. MS
* category.coding.code ^short = "コード体系http://terminology.hl7.org/CodeSystem/observation-categoryから、健診項目にあったカテゴリを指定する。"
* category.coding.code ^example.label = "for code"
* category.coding.code ^example.valueCode = #laboratory
* category.coding.display MS
* category.coding.display ^short = "コードの表示名。"
* category.coding.display ^example.label = "for string"
* category.coding.display ^example.valueString = "検体検査"
* code MS
* code from JLAC10 (required)
* code ^short = "健診項目コード。健診項目を識別するJLAC10コードを指定。"
* code.coding 1..1 MS
* code.coding.system 1.. MS
* code.coding.system = "http://jpfhir.jp/fhir/eCheckup/CodeSystem/JLAC10" (exactly)
* code.coding.system ^short = "JLAC10コードを識別するURI。"
* code.coding.code 1.. MS
* code.coding.code ^short = "健診項目コード。"
* code.coding.code ^example.label = "for code"
* code.coding.code ^example.valueCode = #3F015000002327101
* code.coding.display MS
* code.coding.display ^short = "健診項目コードの表示名。"
* code.coding.display ^example.label = "for string"
* code.coding.display ^example.valueString = "中性脂肪"
* subject 1.. MS
* subject ^short = "受診者情報を表すPatientリソースへの参照。"
* subject.reference 1.. MS
* subject.reference ^short = "PatientリソースのfullUrl要素に指定されるUUIDを指定。"
* subject.reference ^example.label = "for string"
* subject.reference ^example.valueString = "urn:uuid:11f0a9a6-a91d-3aef-fc4e-069995b89c4f"
* effective[x] only dateTime
* effective[x] MS
* effective[x] ^short = "検査実施日。検体検査の場合は、検体の採取日となる。ISO8601に準拠し、秒の精度まで記録し、タイムゾーンも付記する。午前0時を”24:00”と記録することはできないため”00:00”と記録すること。"
* performer MS
* performer ^short = "本書では、検査を実施者として、医師の診断の診断者を表すために使用する。"
* performer.reference 1.. MS
* performer.reference ^short = "医師の診断項目の診断者を表すPractitionerリソースへの参照。"
* performer.reference ^example.label = "for string"
* performer.reference ^example.valueString = "urn:uuid:d19ebdbb-29b8-a654-9c83-1905d6504047"
* value[x] only Quantity or CodeableConcept or string
* value[x] MS
* value[x] ^short = "健診結果値"
* dataAbsentReason MS
* dataAbsentReason from DataAbsentReason (required)
* dataAbsentReason ^short = "結果値の欠損理由。"
* dataAbsentReason.coding MS
* dataAbsentReason.coding.system 1.. MS
* dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/dataabsent-reason" (exactly)
* dataAbsentReason.coding.system ^short = "欠損理由コードのコード体系。コードで指定する場合、data-absent-reasonのURIを指定。"
* dataAbsentReason.coding.code 1.. MS
* dataAbsentReason.coding.code ^short = "欠損理由コード。"
* dataAbsentReason.coding.code ^example.label = "for code"
* dataAbsentReason.coding.code ^example.valueCode = #not-performed
* dataAbsentReason.coding.display MS
* dataAbsentReason.coding.display ^short = "欠損理由コードの表示名。"
* dataAbsentReason.coding.display ^example.label = "for string"
* dataAbsentReason.coding.display ^example.valueString = "未実施"
* dataAbsentReason.text MS
* dataAbsentReason.text ^short = "欠損理由をコード化できない場合に、文字で指定する場合に使用する。"
* interpretation MS
* interpretation from ObservationInterpretationCodes (required)
* interpretation ^short = "結果値の解釈を表現する。”observationinterpretation”コード体系からのコードを指定する。"
* interpretation.coding MS
* interpretation.coding.system 1.. MS
* interpretation.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation" (exactly)
* interpretation.coding.system ^short = "observationinterpretationコード体系を識別するURI。"
* interpretation.coding.code 1.. MS
* interpretation.coding.code ^short = "結果解釈コード。"
* interpretation.coding.code ^example.label = "for code"
* interpretation.coding.code ^example.valueCode = #N
* interpretation.coding.display MS
* interpretation.coding.display ^short = "表示名。"
* interpretation.coding.display ^example.label = "for string"
* interpretation.coding.display ^example.valueString = "Normal"
* method MS
* method from XMLobservationCode (required)
* method ^short = "検査の測定方法コードを表す。"
* method.coding MS
* method.coding.system 1.. MS
* method.coding.system = "urn:oid:1.2.392.200119.6.1007" (exactly)
* method.coding.system ^short = "測定方法コードのコード体系を識別するOID。"
* method.coding.code 1.. MS
* method.coding.code ^short = "測定方法コード。"
* method.coding.code ^example.label = "for code"
* method.coding.code ^example.valueCode = #3F01510000
* method.coding.display MS
* method.coding.display ^short = "測定方法コードの表示名。"
* method.coding.display ^example.label = "for string"
* method.coding.display ^example.valueString = "可視吸光光度法（酵素比色法・グリセロール消去）"
* specimen MS
* specimen ^short = "検体情報への参照。FHIR JP 検体検査プロファイルに準拠し、検体検査の場合は必須で指定する。検体検査以外の健診項目の場合は、省略可能。"
* specimen.reference 1.. MS
* specimen.reference ^short = "Specimenリソースへの参照。fullUrlプロパティに指定されたUUIDを指定する。"
* specimen.reference ^example.label = "for string"
* specimen.reference ^example.valueString = "urn:oid:d669559e-2e5a-c271-c1ff-cde1228d4077"
* referenceRange ..1 MS
* referenceRange ^short = "健診結果の基準値を指定する場合に使用する。"
* referenceRange.low MS
* referenceRange.low ^short = "基準値の下限を表現する。"
* referenceRange.low.value 1.. MS
* referenceRange.low.value ^short = "基準値下限。"
* referenceRange.low.value ^example.label = "for decimal"
* referenceRange.low.value ^example.valueDecimal = 50
* referenceRange.low.unit MS
* referenceRange.low.unit ^short = "基準値下限の単位表示名。"
* referenceRange.low.unit ^example.label = "for string"
* referenceRange.low.unit ^example.valueString = "mg/dl"
* referenceRange.low.system = "http://unitsofmeasure.org" (exactly)
* referenceRange.low.system MS
* referenceRange.low.system ^short = "基準値下限の単位コード。指定する場合はUCUMコードのコード体系を識別するURIを指定。"
* referenceRange.low.code MS
* referenceRange.low.code ^short = "基準値下限の単位コード。"
* referenceRange.low.code ^example.label = "for code"
* referenceRange.low.code ^example.valueCode = #mg/dL
* referenceRange.high MS
* referenceRange.high ^short = "基準値の上限を表現する。"
* referenceRange.high.value 1.. MS
* referenceRange.high.value ^short = "基準値上限。"
* referenceRange.high.value ^example.label = "for decimal"
* referenceRange.high.value ^example.valueDecimal = 150
* referenceRange.high.unit MS
* referenceRange.high.unit ^short = "基準値上限の単位表示名。"
* referenceRange.high.unit ^example.label = "for string"
* referenceRange.high.unit ^example.valueString = "mg/dl"
* referenceRange.high.system = "http://unitsofmeasure.org" (exactly)
* referenceRange.high.system MS
* referenceRange.high.system ^short = "基準値上限の単位コード。指定する場合はUCUMコードのコード体系を識別するURIを指定。"
* referenceRange.high.code MS
* referenceRange.high.code ^short = "基準値上限の単位コード。"
* referenceRange.high.code ^example.label = "for code"
* referenceRange.high.code ^example.valueCode = #mg/dL
* hasMember MS
* hasMember ^short = "健診項目グループを表現する場合に、グループ内の健診項目に対応するObservationリソースへの参照を表現する。"
* hasMember.reference 1.. MS
* hasMember.reference ^short = "Observationリソースへの参照。"
* hasMember.reference ^example.label = "for string"
* hasMember.reference ^example.valueString = "urn:uuid:1af0a9a6-a91d-3aef-fc4e-069995b89c1f"
* derivedFrom MS
* derivedFrom ^short = "検査結果にシェーマ画像などを直接参照させたい場合に使用する。"
* derivedFrom.reference 1.. MS
* derivedFrom.reference ^short = "検査画像情報を表すMediaリソースへの参照。"
* derivedFrom.reference ^example.label = "for string"
* derivedFrom.reference ^example.valueString = "urn:uuid:673f8db5-0ffd-4395-9657-6da00420bbc3"
* component MS
* component ^short = "本書では、所見型の健診項目の場合に、所見有無に対応する健診項目に対して、対応する所見を記述する場合に使用する。"
* component.code MS
* component.code from JLAC10 (required)
* component.code ^short = "健診項目コード。健診項目を識別するJLAC10コードを指定。"
* component.code.coding 1.. MS
* component.code.coding.system 1.. MS
* component.code.coding.system = "http://jpfhir.jp/fhir/eCheckup/CodeSystem/JLAC10" (exactly)
* component.code.coding.system ^short = "JLAC10コードを識別するURI。"
* component.code.coding.code 1.. MS
* component.code.coding.code ^short = "健診項目コード。"
* component.code.coding.code ^example.label = "for code"
* component.code.coding.code ^example.valueCode = #9N61100000000049
* component.code.coding.display MS
* component.code.coding.display ^short = "健診項目コードの表示名。"
* component.code.coding.display ^example.label = "for string"
* component.code.coding.display ^example.valueString = "他覚症状所見"
* component.value[x] only string
* component.value[x] MS
* component.value[x] ^short = "健診結果　初見を表す結果値。"
* component.value[x] ^example.label = "for string"
* component.value[x] ^example.valueString = "胸部くも状血管あり"
* component.dataAbsentReason MS
* component.dataAbsentReason from DataAbsentReason (required)
* component.dataAbsentReason ^short = "健診結果が欠損している場合の欠損理由。"
* component.dataAbsentReason.coding MS
* component.dataAbsentReason.coding.system 1.. MS
* component.dataAbsentReason.coding.system = "http://terminology.hl7.org/CodeSystem/dataabsent-reason" (exactly)
* component.dataAbsentReason.coding.system ^short = "欠損理由コードのコード体系。コードで指定する場合、data-absent-reasonのURIを指定。"
* component.dataAbsentReason.coding.code 1.. MS
* component.dataAbsentReason.coding.code ^short = "欠損理由コード。"
* component.dataAbsentReason.coding.code ^example.label = "for code"
* component.dataAbsentReason.coding.code ^example.valueCode = #not-performed
* component.dataAbsentReason.coding.display MS
* component.dataAbsentReason.coding.display ^short = "欠損理由コードの表示名。"
* component.dataAbsentReason.coding.display ^example.label = "for string"
* component.dataAbsentReason.coding.display ^example.valueString = "未実施"
* component.dataAbsentReason.text MS
* component.dataAbsentReason.text ^short = "欠損理由をコード化できない場合に、文字で指定する場合に使用する。"