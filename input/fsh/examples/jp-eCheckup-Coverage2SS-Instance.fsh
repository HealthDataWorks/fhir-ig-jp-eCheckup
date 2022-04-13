Instance: jp-eCheckup-Coverage2SS
InstanceOf: Coverage2
Title: "Coverageリソース　保険証情報記述例"
Description: "保険証情報を表すCoverageリソースのサンプルインスタンス。"
Usage: #example
* meta.versionId = "4"
* meta.lastUpdated = "2021-07-01T09:37:57.557+00:00"
* meta.source = "#Bd2j7B18tfJfdvmv"
* extension[0].url = "https://igs.healthdataworks.net/jp-eCheckup/StructureDefinition-jp-eCheckup-InsuredPersonNumber.html"
* extension[=].valueString = "１２３４５"
* extension[+].url = "https://igs.healthdataworks.net/jp-eCheckup/StructureDefinition-jp-eCheckup-InsuredPersonSymbol.html"
* extension[=].valueString = "６７８９０"
* status = #active
* type = urn:oid:1.2.392.100495.20.2.61#1
* beneficiary = Reference(jp-eCheckup-PatientSS)
* dependent = "01"
* relationship = urn:oid:1.2.392.100495.20.2.62#1 "本人"
* period.start = "2018-04-01"
* period.end = "2022-03-31"
* payor = Reference(jp-eCheckup-OrganizationSS)