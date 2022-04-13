Instance: jp-eCheckup-Observation2-2SS
InstanceOf: Observation1
Title: "Observationリソース　エントリ仕様パターン①－２－２"
Description: "検査結果セクションパターン①－２のObservationリソースから参照される個々のObservationリソースのサンプル(検査項目2)。"
Usage: #example
* meta.versionId = "5"
* meta.lastUpdated = "2021-06-24T04:45:21.557+00:00"
* meta.source = "#Vyq5pU4SKpHlVRhr"
* status = #final
* category = $observation-category#laboratory
* code = $JLAC10#2A020000001930101 "赤血球数"
* subject = Reference(jp-eCheckup-PatientSS)
* interpretation = $v3-ObservationInterpretation#N
* specimen = Reference(jp-eCheckup-SpecimenSS)
* referenceRange.low = 427 '10*4/mm3' "10*4/mm3"
* referenceRange.high = 570 '10*4/mm3' "10*4/mm3"