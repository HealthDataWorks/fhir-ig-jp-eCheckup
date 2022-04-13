Instance: Inline-Instance-for-jp-eCheckup-Bundle3SS-19
InstanceOf: Observation1
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $JLAC10#3F070000002327101 "ＨＤＬコレステロール"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueQuantity = 45 'mg/dL' "mg/dl"
* interpretation = $v3-ObservationInterpretation#N
* method = urn:oid:1.2.392.200119.6.1007#3F07010000 "可視吸光光度法（直接法（非沈殿法））"
* specimen = Reference(jp-eCheckup-SpecimenSS)
* referenceRange.low = 40 'mg/dL' "mg/dl"
* referenceRange.high = 96 'mg/dL' "mg/dl"