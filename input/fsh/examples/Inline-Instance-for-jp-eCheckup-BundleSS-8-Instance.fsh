Instance: Inline-Instance-for-jp-eCheckup-BundleSS-8
InstanceOf: Coverage2
Usage: #inline
* extension[0].url = "https://igs.healthdataworks.net/jp-eCheckup/StructureDefinition-jp-eCheckup-InsuredPersonSymbol.html"
* extension[=].valueString = "１２３４５"
* extension[+].url = "https://igs.healthdataworks.net/jp-eCheckup/StructureDefinition-jp-eCheckup-InsuredPersonNumber.html"
* extension[=].valueString = "６７８９０"
* status = #active
* type = urn:oid:1.2.392.100495.20.2.61#1
* beneficiary = Reference(jp-eCheckup-PatientSS)
* dependent = "01"
* relationship = urn:oid:1.2.392.100495.20.2.62#1 "本人"
* period.start = "2018-04-01"
* period.end = "2022-03-31"
* payor = Reference(urn:uuid:7c9f9f7f-e546-0ac2-6828-a9e0b24e5750)