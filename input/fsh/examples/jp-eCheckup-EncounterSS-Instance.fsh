Instance: jp-eCheckup-EncounterSS
InstanceOf: Encounter
Title: "Encounterリソース　検診実施情報記述例"
Description: "健診実施情報を表すEncounterリソースのサンプルインスタンス。"
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2021-06-22T04:43:00.232+00:00"
* meta.source = "#wkgJUvmiUuuVZiLV"
* status = #finished
* class = $encounterCategory#checkup "健診"
* serviceType = urn:oid:1.2.392.200119.6.1002#010 "特定健診"
* period.start = "2020-10-01"
* period.end = "2020-10-01"
* serviceProvider = Reference(jp-eCheckup-OrganizationSS)