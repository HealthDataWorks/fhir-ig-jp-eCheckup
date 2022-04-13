Instance: jp-eCheckup-Observation8SS
InstanceOf: Observation1
Title: "Observationリソース　測定不能の記述例①"
Description: "測定不能を表すObservationリソースのうち、基準値や検査手法コードを記述したサンプルインスタンス。"
Usage: #example
* meta.versionId = "5"
* meta.lastUpdated = "2021-06-24T04:47:36.857+00:00"
* meta.source = "#oN9BD4HQ5OPo0MM6"
* status = #final
* category = $observation-category#laboratory
* code = $JLAC10#3F015000002327101 "中性脂肪"
* subject = Reference(jp-eCheckup-PatientSS)
* method = urn:oid:1.2.392.200119.6.1007#3F01510000 "可視吸光光度法（酵素比色法・グリセロール消去）"
* specimen = Reference(jp-eCheckup-SpecimenSS)
* referenceRange.low = 50 'mg/dL' "mg/dl"
* referenceRange.high = 150 'mg/dL' "mg/dl"