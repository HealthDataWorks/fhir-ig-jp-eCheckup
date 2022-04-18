Instance: jp-eCheckup-Observation9SS
InstanceOf: Observation1
Title: "Observationリソース　測定不能の記述例②"
Description: "測定不能を表すObservationリソースのうち、基準値や検査手法コードを省略したサンプルインスタンス。"
Usage: #example
* meta.versionId = "5"
* meta.lastUpdated = "2021-06-24T04:47:50.171+00:00"
* meta.source = "#ILMAnMxXMrVNhU2a"
* status = #final
* category = $observation-category#laboratory
* code = $JLAC10#1A020000000191111 "尿糖"
* subject = Reference(jp-eCheckup-PatientSS)
* dataAbsentReason = $dataabsent-reason#error
* specimen = Reference(jp-eCheckup-SpecimenSS)