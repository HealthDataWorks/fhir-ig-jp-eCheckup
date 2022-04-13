Instance: Inline-Instance-for-jp-eCheckup-Bundle3SS-30
InstanceOf: Observation1
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $JLAC10#2A020000001930101 "赤血球数"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueQuantity = 500 '10*4/mm3' "10*4/mm3"
* interpretation = $v3-ObservationInterpretation#N
* specimen = Reference(jp-eCheckup-SpecimenSS)
* referenceRange.low = 353 '10*4/mm3' "10*4/mm3"
* referenceRange.high = 484 '10*4/mm3' "10*4/mm3"