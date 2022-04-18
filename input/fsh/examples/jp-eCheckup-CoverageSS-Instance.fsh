Instance: jp-eCheckup-CoverageSS
InstanceOf: Coverage
Title: "Coverageリソース　受診券記述例"
Description: "受診券を表すCoverageリソースのサンプルインスタンス。"
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2021-06-18T08:53:12.917+00:00"
* meta.source = "#83dx5tsvbWpRcNnU"
* status = #active
* type = urn:oid:1.2.392.200119.6.208#1
* subscriberId = "21100000123"
* beneficiary = Reference(jp-eCheckup-PatientSS)
* period.start = "2021-04-01"
* period.end = "2022-03-31"
* payor = Reference(urn:uuid:7c9f9f7f-e546-0ac2-6828-a9e0b24e5750)