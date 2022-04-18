Instance: Inline-Instance-for-jp-eCheckup-Bundle3SS-29
InstanceOf: Observation1
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $JLAC10#2A030000001930101 "血色素量"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueQuantity = 15 'g/dL' "g/dl"
* interpretation = $v3-ObservationInterpretation#N
* specimen = Reference(jp-eCheckup-SpecimenSS)
* referenceRange.low = 12.1 'g/dL' "g/dl"
* referenceRange.high = 14.5 'g/dL' "g/dl"