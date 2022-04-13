Instance: jp-eCheckup-ObservationSS
InstanceOf: Observation1
Title: "Observationリソース　エントリ仕様パターン①－１"
Description: """検査結果セクションパターン①のObservationリソースのサンプルインスタンス。
• 検査項目：中性脂肪 項目コード＝"3F015000002327101"、測定値
=100mg/dL
• 基準値＝下限50、上限150
• 測定方法＝可視吸光光度法（酵素比色法・グリセロール消去）検査法コー
ド 3F01510000
• 結果解釈コード＝N"""
Usage: #example
* meta.versionId = "5"
* meta.lastUpdated = "2021-06-24T04:48:18.841+00:00"
* meta.source = "#IAcpq7jFudH0jXmS"
* status = #final
* category = $observation-category#laboratory
* code = $JLAC10#3F015000002327101 "中性脂肪"
* subject = Reference(jp-eCheckup-PatientSS)
* interpretation = $v3-ObservationInterpretation#N
* method = urn:oid:1.2.392.200119.6.1007#3F01510000 "可視吸光光度法（酵素比色法・グリセロール消去）"
* specimen = Reference(jp-eCheckup-SpecimenSS)
* referenceRange.low = 50 'mg/dL' "mg/dl"
* referenceRange.high = 150 'mg/dL' "mg/dl"