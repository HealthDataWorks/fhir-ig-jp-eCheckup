Instance: jp-eCheckup-Observation5SS
InstanceOf: Observation1
Title: "Observationリソース　エントリ仕様パターン②－２"
Description: """検査結果セクションパターン②－２のObservationリソースのサンプルインスタンス。
• 検査項目：他覚症状所見 表示名＝"他覚所見"
• 結果値："胸部くも状血管あり"
• データ型：ST（string 型）"""
Usage: #example
* meta.versionId = "4"
* meta.lastUpdated = "2021-06-24T04:46:54.080+00:00"
* meta.source = "#Scu8xQvlXXznXODN"
* status = #final
* category = $observation-category#exam
* code = $JLAC10#9N611000000000011 "他覚症状"
* subject = Reference(jp-eCheckup-PatientSS)
* component.code = $JLAC10#9N61100000000049 "他覚症状所見"
* component.valueString = "胸部くも状血管あり"