Instance: jp-eCheckup-DiagnosticReportSS
InstanceOf: DiagnosticReport
Title: "DiagnosticReportリソース　画像参照記述例"
Description: "DICOM画像が添付された画像検査報告書のサンプルインスタンス。"
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2021-06-22T04:40:22.245+00:00"
* meta.source = "#Enr1THxV7MqReSNh"
* status = #final
* code = $loinc#18748-4 "画像検査報告書"
* media.link = Reference(jp-eCheckup-MediaSS)