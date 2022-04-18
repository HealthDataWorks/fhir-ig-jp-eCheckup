Instance: Inline-Instance-for-jp-eCheckup-Bundle3SS-18
InstanceOf: Observation1
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $JLAC10#3F015000002327101 "中性脂肪"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueQuantity = 128 'mg/dL' "mg/dl"
* interpretation = $v3-ObservationInterpretation#N
* method = urn:oid:1.2.392.200119.6.1007#3F01510000 "可視吸光光度法（酵素比色法・グリセロール消去）"
* specimen = Reference(jp-eCheckup-SpecimenSS)
* referenceRange.low = 50 'mg/dL' "mg/dl"
* referenceRange.high = 149 'mg/dL' "mg/dl"