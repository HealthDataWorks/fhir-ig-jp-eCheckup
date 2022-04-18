Instance: Inline-Instance-for-jp-eCheckup-BundleSS-27
InstanceOf: Observation1
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $JLAC10#1A010000000191111 "尿蛋白"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueCodeableConcept.coding.extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* valueCodeableConcept.coding.extension.valueDecimal = 1
* valueCodeableConcept.coding = urn:oid:1.2.392.200119.6.2102#1 "－"
* specimen = Reference(jp-eCheckup-SpecimenSS)