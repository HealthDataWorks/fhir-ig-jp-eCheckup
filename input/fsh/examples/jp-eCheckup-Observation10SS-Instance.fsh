Instance: jp-eCheckup-Observation10SS
InstanceOf: Observation1
Title: "Observationリソース　画像参照記述例"
Description: "DICOM画像が添付された検診結果を表すObservationリソースのサンプルインスタンス。"
Usage: #example
* meta.versionId = "6"
* meta.lastUpdated = "2021-06-24T04:44:33.886+00:00"
* meta.source = "#j4pE6oECpaNJG5vr"
* status = #final
* category = $observation-category#imaging
* code = $JLAC10#9N201000000000011 "胸部X 線検査（がん：直接撮影）"
* subject = Reference(jp-eCheckup-PatientSS)
* derivedFrom = Reference(jp-eCheckup-MediaSS)