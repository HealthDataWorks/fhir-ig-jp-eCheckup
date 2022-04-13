Instance: Inline-Instance-for-jp-eCheckup-Bundle3SS-24
InstanceOf: Observation1
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $JLAC10#3D010000001926101 "空腹時血糖"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueQuantity = 98 'mg/dL' "mg/dl"
* interpretation = $v3-ObservationInterpretation#N
* method = urn:oid:1.2.392.200119.6.1007#3D01010000 "電位差法（ブドウ糖酸化酵素電極法）"
* specimen = Reference(jp-eCheckup-SpecimenSS)
* referenceRange.high = 99 'mg/dL' "mg/dl"