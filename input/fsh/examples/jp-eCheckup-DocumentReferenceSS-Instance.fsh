Instance: jp-eCheckup-DocumentReferenceSS
InstanceOf: DocumentReference
Title: "DocumentReferenceリソース　添付文書記述例"
Description: "測定不能を表すObservationリソースのうち、基準値や検査手法コードを記述したサンプルインスタンス。"
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2021-06-22T04:36:08.340+00:00"
* meta.source = "#wL8uCFn5VThVW03d"
* status = #current
* description = "１２誘導心電図 MFER データ"
* content.attachment.contentType = #application/mwf
* content.attachment.data = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxw=="
* context.related = Reference(jp-eCheckup-ObservationSS)