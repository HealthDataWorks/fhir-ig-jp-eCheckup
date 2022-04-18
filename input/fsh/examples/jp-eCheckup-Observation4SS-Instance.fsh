Instance: jp-eCheckup-Observation4SS
InstanceOf: Observation1
Title: "Observationリソース　エントリ仕様パターン②－１"
Description: """検査結果セクションパターン②－１のObservationリソースのサンプルインスタンス。
• 検査項目：眼底検査（キースワグナー分類） 表示名＝"眼底検査ＫＷ分類"
• 測定値：分類Ｉ（コード値＝2）
• データ型：CO 型 （CodeableConcept 型にordinalValue 拡張を使用）
• 眼底検査（キースワグナー分類）コード表のOID＝1.2.392.200119.6.2110"""
Usage: #example
* meta.versionId = "4"
* meta.lastUpdated = "2021-06-24T04:46:39.635+00:00"
* meta.source = "#LoIhafvCPJSkUqLw"
* status = #final
* category = $observation-category#procedure
* code = $JLAC10#9E101000000000011 "眼底検査ＫＷ分類"
* subject = Reference(jp-eCheckup-PatientSS)