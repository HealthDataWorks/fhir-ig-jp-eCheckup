Instance: Inline-Instance-for-jp-eCheckup-BundleSS-23
InstanceOf: Observation1
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $JLAC10#3B090000002327101 "γ－ＧＴ（γ－ＧＴＰ）"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueQuantity = 55 'U/L' "U/l"
* interpretation = $v3-ObservationInterpretation#N
* method = urn:oid:1.2.392.200119.6.1007#3B09010000 "可視吸光光度法（JSCC 標準化対応法）"
* specimen = Reference(jp-eCheckup-SpecimenSS)
* referenceRange.low = 0 'U/L' "U/l"
* referenceRange.high = 30 'U/L' "U/l"