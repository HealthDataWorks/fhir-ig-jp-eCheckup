Instance: Inline-Instance-for-jp-eCheckup-BundleSS-20
InstanceOf: Observation1
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $JLAC10#3F077000002327101 "ＬＤＬコレステロール"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueQuantity = 88 'mg/dL' "mg/dl"
* interpretation = $v3-ObservationInterpretation#N
* method = urn:oid:1.2.392.200119.6.1007#3F07710000 "可視吸光光度法（直接法（非沈殿法））"
* specimen = Reference(jp-eCheckup-SpecimenSS)
* referenceRange.low = 70 'mg/dL' "mg/dl"
* referenceRange.high = 140 'mg/dL' "mg/dl"