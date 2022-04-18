Instance: jp-eCheckup-PractitionerSS
InstanceOf: Practitioner
Title: "Practitionerリソース　検診結果報告書の作成者情報記述例"
Description: "健診結果報告書の作成者情報を表すサンプルインスタンス。"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2021-06-14T07:58:16.845+00:00"
* meta.source = "#NnVctvv3oHR8RJj6"
* name[0].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #IDE
* name[=].family = "東京"
* name[=].given = "太郎"
* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #SYL
* name[=].family = "トウキョウ"
* name[=].given = "タロウ"