Instance: Inline-Instance-for-jp-eCheckup-BundleSS-24
InstanceOf: Observation1
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $JLAC10#3D046000001906202 "ＨｂＡ１ｃ（ＮＧＳＰ）"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueQuantity = 7 '%' "%"
* interpretation = $v3-ObservationInterpretation#H
* method = urn:oid:1.2.392.200119.6.1007#3D04610000 "免疫学的方法（ラテックス凝集比濁法等）"
* specimen = Reference(jp-eCheckup-SpecimenSS)
* referenceRange.low = 4.3 '%' "%"
* referenceRange.high = 5.8 '%' "%"