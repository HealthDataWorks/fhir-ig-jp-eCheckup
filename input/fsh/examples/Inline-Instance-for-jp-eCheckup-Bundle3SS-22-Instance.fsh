Instance: Inline-Instance-for-jp-eCheckup-Bundle3SS-22
InstanceOf: Observation1
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $JLAC10#3B045000002327201 "ＧＰＴ（ＡＬＴ）"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueQuantity = 16 'U/L' "U/l"
* interpretation = $v3-ObservationInterpretation#N
* method = urn:oid:1.2.392.200119.6.1007#3B04510000 "紫外吸光光度法（JSCC 標準化対応法）"
* specimen = Reference(jp-eCheckup-SpecimenSS)
* referenceRange.low = 5 'U/L' "U/l"
* referenceRange.high = 30 'U/L' "U/l"