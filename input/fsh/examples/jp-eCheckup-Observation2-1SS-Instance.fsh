Instance: jp-eCheckup-Observation2-1SS
InstanceOf: Observation1
Title: "Observationリソース　エントリ仕様パターン①－２－１"
Description: "検査結果セクションパターン①－２のObservationリソースから参照される個々のObservationリソースのサンプル(検査項目1)。"
Usage: #example
* meta.versionId = "6"
* meta.lastUpdated = "2021-06-24T04:44:54.022+00:00"
* meta.source = "#9Su3QagKPvLkRqx6"
* status = #final
* category = $observation-category#laboratory
* code = $JLAC10#2A030000001930101 "血色素量"
* subject = Reference(jp-eCheckup-PatientSS)
* interpretation = $v3-ObservationInterpretation#N
* specimen = Reference(jp-eCheckup-SpecimenSS)
* referenceRange.low = 12.5 'g/dL' "g/dl"
* referenceRange.high = 15.9 'g/dL' "g/dl"