Instance: Inline-Instance-for-jp-eCheckup-Bundle3SS-21
InstanceOf: Observation1
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $JLAC10#3B035000002327201 "ＧＯＴ（ＡＳＴ）"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueQuantity = 32 'U/L' "U/l"
* interpretation = $v3-ObservationInterpretation#N
* method = urn:oid:1.2.392.200119.6.1007#3B03510000 "紫外吸光光度法（JSCC 標準化対応法）"
* specimen = Reference(jp-eCheckup-SpecimenSS)
* referenceRange.low = 10 'U/L' "U/l"
* referenceRange.high = 40 'U/L' "U/l"