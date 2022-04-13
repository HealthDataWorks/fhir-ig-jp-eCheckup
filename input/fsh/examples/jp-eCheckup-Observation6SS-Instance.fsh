Instance: jp-eCheckup-Observation6SS
InstanceOf: Observation1
Title: "Observationリソース　エントリ仕様パターン②－３"
Description: """検査結果セクションパターン②－３のObservationリソースのサンプルインスタンス。
• 検査項目：医師の判断（運動指導必要）および、判断した医師名（田中太郎）"""
Usage: #example
* meta.versionId = "5"
* meta.lastUpdated = "2021-06-24T04:47:08.168+00:00"
* meta.source = "#PWIqgTM0TatbLrUR"
* status = #final
* category = $observation-category#exam
* code = $JLAC10#9N541000000000049 "医師の判断"
* subject = Reference(jp-eCheckup-PatientSS)
* performer = Reference(jp-eCheckup-PractitionerSS)
* valueString = "運動指導必要"