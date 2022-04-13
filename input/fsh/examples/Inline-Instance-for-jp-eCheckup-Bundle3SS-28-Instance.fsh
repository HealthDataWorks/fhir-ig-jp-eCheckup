Instance: Inline-Instance-for-jp-eCheckup-Bundle3SS-28
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $ObservationGroupCode#2A000 "貧血検査項目"
* subject = Reference(jp-eCheckup-PatientSS)
* hasMember[0] = Reference(urn:uuid:9a778fff-b506-fef3-b02c-b6bd28c2686a)
* hasMember[+] = Reference(urn:uuid:e828fa24-d30f-90d0-2fec-ca808edaeb15)