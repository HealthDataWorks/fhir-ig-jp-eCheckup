Instance: jp-eCheckup-Observation7SS
InstanceOf: Observation1
Title: "Observationリソース　検査未実施のサンプル"
Description: "検査未実施を表すObservationリソースのサンプルインスタンス。"
Usage: #example
* meta.versionId = "4"
* meta.lastUpdated = "2021-06-24T04:47:22.405+00:00"
* meta.source = "#laqK7yy7tmGw4ZAa"
* status = #final
* category = $observation-category#laboratory
* code = $JLAC10#1A020000000191111 "尿糖"
* subject = Reference(jp-eCheckup-PatientSS)
* dataAbsentReason = $dataabsent-reason#not-performed