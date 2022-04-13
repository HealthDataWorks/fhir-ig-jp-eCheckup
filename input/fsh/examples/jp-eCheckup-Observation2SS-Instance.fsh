Instance: jp-eCheckup-Observation2SS
InstanceOf: Observation1
Title: "Observationリソース　エントリ仕様パターン①－２"
Description: """検査結果セクションパターン①－２のObservationリソースのサンプルインスタンス。
「易疲労感の訴えあり」という理由で医師の判断により貧血検査セットとして、血色素量と赤血球数が実施された場合のサンプル。一連検査グループの記述例。
• 検査項目１：血色素量 項目コード＝"2A030000001930101" 測定値＝15.0mg/dL
• 基準値：下限 12.5 上限 15.9 結果解釈コード＝"N"
• 検査項目２：赤血球数 項目コード＝"2A020000001930101" 測定値＝500 万/mm3
• 基準値：下限 427 上限 570 結果解釈コード＝"N"
• 検査理由：項目コード＝"2A020000001930149" 易疲労感の訴えあり ST 型（文字列型）"""
Usage: #example
* meta.versionId = "6"
* meta.lastUpdated = "2021-06-24T04:46:07.075+00:00"
* meta.source = "#OB0MKhtqAufEq8Xk"
* status = #final
* category = $observation-category#laboratory
* code = $JLAC10#2A000 "貧血検査項目"
* subject = Reference(jp-eCheckup-PatientSS)
* hasMember[0] = Reference(jp-eCheckup-Observation2-1SS)
* hasMember[+] = Reference(jp-eCheckup-Observation2-2SS)
* hasMember[+] = Reference(jp-eCheckup-Observation2-3SS)