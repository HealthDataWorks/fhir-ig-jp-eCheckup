Instance: jp-eCheckup-Observation2-3SS
InstanceOf: Observation1
Title: "Observationリソース　エントリ仕様パターン①－２－３"
Description: "検査結果セクションパターン①－２のObservationリソースから参照される個々のObservationリソースのサンプル(検査理由)。"
Usage: #example
* meta.versionId = "4"
* meta.lastUpdated = "2021-06-24T04:45:39.851+00:00"
* meta.source = "#US6fE9Qn5LMMX2hA"
* status = #final
* category = $observation-category#laboratory
* code = $JLAC10#2A020000001930159 "貧血検査実施理由"
* subject = Reference(jp-eCheckup-PatientSS)
* valueString = "易疲労感の訴えあり"