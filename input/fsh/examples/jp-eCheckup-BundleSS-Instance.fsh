Instance: jp-eCheckup-BundleSS
InstanceOf: Bundle
Title: "Bundleリソース　特定検診記述例1"
Description: """特定健診の結果を、FHIR Documentで構造化して記述したサンプルインスタンス。

|No|項目||設定値||
|---|---|---|---|---|
|1|報告区分||10:特定健診||
|2|健診プログラムサービスコード||010：特定健診||
|3|受診日||2020年10月1日||
|4|受診者|氏名|健診太郎||
|5||カナ氏名|ケンシンタロウ||
|6||生年月日|1950年5月4日||
|7||性別|男性||
|8||住所|123-4567 神奈川県横浜市港区１－２－３||
|9||電話番号|03-1111-2222（自宅）||
|10|健診実施機関|名称|厚生労働省第一病院||
|11||機関番号|1311234567||
|12||所在地|〒100-0001 東京都千代田区千代田９－９－９||
|13||電話番号|0123-456-7890||
|14|健診実施者|氏名|東京太郎||
|15||カナ氏名|トウキョウタロウ||
|16|受診券情報|受診券整理番号|20100000123||
|17||有効期限|2020年4月1日～2021年3月31日||
|18||発行者|サンプル健康保険組合||
|19|健診セクション|身長|項目コード|9N001000000000001|
|20|||結果値|162.3|
|21|||単位|cm|
|22||体重|項目コード|9N006000000000001|
|23|||結果値|65.5|
|24|||単位|kg|
|25||BMI|項目コード|9N011000000000001|
|26|||結果値|24.9|
|27|||単位|kg/m2|
|28||腹囲|項目コード|9N016160100000001|
|29|||結果値|70|
|30|||単位|cm|
|31|||測定方法|1 回目|
|32||既往歴|項目コード|9N056000000000011|
|33|||結果値|1:特記事項有り|
|34||具体的な既往歴|項目コード|9N056160400000049|
|35|||結果値|ヘルニア、膀胱炎|
|36||自覚症状|項目コード|9N061000000000011|
|37|||結果値|1:特記事項有り|
|38||自覚症状所見|項目コード|9N061160800000049|
|39|||結果値|胃痛|
|40||他覚症状|項目コード|9N066000000000011|
|41|||結果値|2:特記事項無し|
|42||収縮期血圧（１回目）|項目コード|9A751000000000001|
|43|||結果値|149|
|44|||単位|mmHg|
|45|||結果解釈コード|N|
|46|||測定方法|1 回目|
|47|||基準値下限|80 mmHg|
|48|||基準値上限|130 mmHg|
|49||拡張期血圧（１回目）|項目コード|9A761000000000001|
|50|||結果値|90|
|51|||単位|mmHg|
|52|||結果解釈コード|N|
|53|||測定方法|1 回目|
|54|||基準値下限|40 mmHg|
|55|||基準値上限|80 mmHg|
|56||中性脂肪|項目コード|3F015000002327101|
|57|||結果値|60|
|58|||単位|mg/dl|
|59|||結果解釈コード|N|
|60|||測定方法|可視吸光光度法（酵素比色法・グリセロール消去）|
|61|||基準値下限|50 mmHg|
|62|||基準値上限|149 mmHg|
|63||ＨＤＬコレステロール|項目コード|3F070000002327101|
|64|||結果値|45|
|65|||単位|mg/dl|
|66|||結果解釈コード|N|
|67|||測定方法|可視吸光光度法（直接法（非沈殿法））|
|68|||基準値下限|40 mg/dl|
|69|||基準値上限|96 mg/dl|
|70||ＬＤＬコレステロール|項目コード|3F077000002327101|
|71|||結果値|88|
|72|||単位|mg/dl|
|73|||結果解釈コード|N|
|74|||測定方法|可視吸光光度法（直接法（非沈殿法））|
|75|||基準値下限|70 mg/dl|
|76|||基準値上限|140 mg/dl|
|77||ＧＯＴ（ＡＳＴ）|項目コード|3B035000002327201|
|78|||結果値|32|
|79|||単位|U/l|
|80|||結果解釈コード|N|
|81|||測定方法|紫外吸光光度法（JSCC 標準化対応法）|
|82|||基準値下限|10 U/l|
|83|||基準値上限|40 U/l|
|84||ＧＰＴ（ＡＬＴ）|項目コード|3B045000002327201|
|85|||結果値|16|
|86|||単位|U/l|
|87|||結果解釈コード|N|
|88|||測定方法|紫外吸光光度法（JSCC 標準化対応法）|
|89|||基準値下限|5 U/l|
|90|||基準値上限|30 U/l|
|91||γ－ＧＴ（γ－ＧＴＰ）|項目コード|3B090000002327101|
|92|||結果値|55|
|93|||単位|U/l|
|94|||結果解釈コード|N|
|95|||測定方法|可視吸光光度法（JSCC 標準化対応法）|
|96|||基準値下限|0 U/l|
|97|||基準値上限|30 U/l|
|98||ＨｂＡ１ｃ（ＮＧＳＰ）|項目コード|3D046000001906202|
|99|||結果値|7|
|100|||単位|%|
|101|||結果解釈コード|N|
|102|||測定方法|免疫学的方法（ラテックス凝集比濁法等）|
|103|||基準値下限|4.3 %|
|104|||基準値上限|5.8 %|
|105||採血時間（食後）|項目コード|9N141000000000011|
|106|||結果値|2：食後１０時間以上|
|107||尿糖|項目コード|1A020000000191111|
|108|||結果値|1：－|
|109||尿蛋白|項目コード|1A010000000191111|
|110|||結果値|1：－|
|111||メタボリックシンドローム判定|項目コード|9N501000000000011|
|112|||結果値|3：非該当|
|113||保健指導レベル|項目コード|9N506000000000011|
|114|||結果値|3：なし|
|115||医師の診断（判定）|項目コード|9N511000000000049|
|116|||結果値|肝機能がわずかに異常ですが支障はないと思われます。|
|117|問診セクション|服薬１（血圧）|項目コード|9N701000000000011|
|118|||結果値|2：いいえ|
|119||服薬２（血糖）|項目コード|9N706000000000011|
|120|||結果値|2：いいえ|
|121||服薬３（脂質）|項目コード|9N711000000000011|
|122|||結果値|2：いいえ|
|123||喫煙|項目コード|9N736000000000011|
|124|||結果値|2：いいえ|
|125||既往歴１（脳血管）|項目コード|9N716000000000011|
|126|||結果値|2：いいえ|
|127||既往歴２（心血管）|項目コード|9N721000000000011|
|128|||結果値|2：いいえ|
|129||既往歴３（腎不全・人工透析）|項目コード|9N726000000000011|
|130|||結果値|2：いいえ|
|131||貧血|項目コード|9N731000000000011|
|132|||結果値|2：いいえ|
|133||２０歳からの体重変化|項目コード|9N741000000000011|
|134|||結果値|2：いいえ|
|135||３０分以上の運動習慣|項目コード|9N746000000000011|
|136|||結果値|2：いいえ|
|137||歩行又は身体活動|項目コード|9N751000000000011|
|138|||結果値|2：いいえ|
|139||歩行速度|項目コード|9N756000000000011|
|140|||結果値|2：いいえ|
|141||咀嚼|項目コード|9N872000000000011|
|142|||結果値|1：何でもかんで食べることができる|
|143||食べ方1（早食い等）|項目コード|9N766000000000011|
|144|||結果値|1：速い|
|145||食べ方２（就寝前）|項目コード|9N771000000000011|
|146|||結果値|1：はい|
|147||食べ方３（間食）|項目コード|9N782000000000011|
|148|||結果値|2：時々|
|149||食習慣|項目コード|9N781000000000011|
|150|||結果値|1：はい|
|151||飲酒|項目コード|9N786000000000011|
|152|||結果値|3：ほとんど飲まない|
|153||飲酒量|項目コード|9N791000000000011|
|154|||結果値|1：１合未満|
|155||睡眠|項目コード|9N796000000000011|
|156|||結果値|2：いいえ|
|157||生活習慣の改善|項目コード|9N801000000000011|
|158|||結果値|1：意思なし|
|159||保健指導の希望|項目コード|9N806000000000011|
|160|||結果値|2：いいえ|"""
Usage: #example
* meta.versionId = "34"
* meta.lastUpdated = "2021-07-01T09:40:27.669+00:00"
* meta.source = "#Jp45mUcnEIe84YT4"
* type = #document
* timestamp = "2020-10-21T12:12:21.123+00:00"
* entry[0].fullUrl = "urn:uuid:fd13ba04-3b58-ac07-fad6-464cec87691d"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-1
* entry[+].fullUrl = "urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-2
* entry[+].fullUrl = "urn:uuid:e5ea153d-fd94-adcc-fb27-df24f394d3fa"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-3
* entry[+].fullUrl = "urn:uuid:6c4ef273-df66-00ab-c021-d05c5a19e0ba"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-4
* entry[+].fullUrl = "urn:uuid:d1fb6063-8f12-4c2c-922a-7b5e467c8407"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-5
* entry[+].fullUrl = "urn:uuid:3af3232e-1579-d4f6-3578-aa1e799fdcad"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-6
* entry[+].fullUrl = "urn:uuid:38f45298-ea42-9f15-7fb2-48ed899d3ab6"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-7
* entry[+].fullUrl = "urn:uuid:eac6609a-9821-61f7-3eb9-b7db3d9f5cfc"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-8
* entry[+].fullUrl = "urn:uuid:7c9f9f7f-e546-0ac2-6828-a9e0b24e5750"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-9
* entry[+].fullUrl = "urn:uuid:b41c8c97-f3ad-450a-1738-5f2b4c40c68a"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-10
* entry[+].fullUrl = "urn:uuid:cde1fec2-f8af-a793-7fe0-c2c417c9c000"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-11
* entry[+].fullUrl = "urn:uuid:51424f15-c213-00bf-5d31-4770244b4f32"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-12
* entry[+].fullUrl = "urn:uuid:628244db-68cf-abb6-bc9d-2d89bbc2b3ea"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-13
* entry[+].fullUrl = "urn:uuid:ff4472f4-9e44-6aa3-bcd6-abb0662e4641"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-14
* entry[+].fullUrl = "urn:uuid:38cbf2cf-61b7-6738-9d8c-a7b29016c48f"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-15
* entry[+].fullUrl = "urn:uuid:01b972fc-5183-8fa4-0954-10a7c5f5a36e"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-16
* entry[+].fullUrl = "urn:uuid:785fcd39-8c25-4e6d-53bc-a2f8055fd110"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-17
* entry[+].fullUrl = "urn:uuid:88134c9e-2016-d460-a3c8-417615b0065b"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-18
* entry[+].fullUrl = "urn:uuid:397dd498-07ed-49ce-3e43-2ee1c7db42aa"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-19
* entry[+].fullUrl = "urn:uuid:454c83e8-a534-84b9-f4d6-7257f5dc15de"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-20
* entry[+].fullUrl = "urn:uuid:e0252472-a245-2340-c3a5-a6c30faf7d11"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-21
* entry[+].fullUrl = "urn:uuid:a2cefc2b-95d6-4108-dac5-bee1f991608a"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-22
* entry[+].fullUrl = "urn:uuid:d0d3fb12-eacc-c4a2-1762-130b4a65ead2"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-23
* entry[+].fullUrl = "urn:uuid:22479301-4726-e239-09d6-257429835c67"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-24
* entry[+].fullUrl = "urn:uuid:cbb7812a-8f5a-6547-c821-1dc2304d1066"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-25
* entry[+].fullUrl = "urn:uuid:13e56540-0e37-96f8-c774-31d66fb3efa8"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-26
* entry[+].fullUrl = "urn:uuid:881e7ffa-4b36-01de-f954-9eff7a7eba24"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-27
* entry[+].fullUrl = "urn:uuid:55cb9c64-af3d-9763-a3f5-8d14954c36cc"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-28
* entry[+].fullUrl = "urn:uuid:42b66f41-aafe-1452-1f3d-8fc25dfa1ce3"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-29
* entry[+].fullUrl = "urn:uuid:54eabf03-1de5-d080-aed6-6b6a2e4da269"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-30
* entry[+].fullUrl = "urn:uuid:71fcdecc-1331-9067-f5b2-24d6ba5eecda"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-31
* entry[+].fullUrl = "urn:uuid:e6bd5094-2641-966f-92cf-04aced8624ac"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-32
* entry[+].fullUrl = "urn:uuid:84dbe428-621d-90a2-6d8a-93bf7877a623"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-33
* entry[+].fullUrl = "urn:uuid:394254aa-ec8b-9460-b807-3f14af30f980"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-34
* entry[+].fullUrl = "urn:uuid:771633a6-53fe-93b7-a554-55eba705323a"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-35
* entry[+].fullUrl = "urn:uuid:7aba35bb-c544-a4f5-1708-80232eb4ad20"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-36
* entry[+].fullUrl = "urn:uuid:3f789a09-3ed8-7b10-0746-3468712a31e0"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-37
* entry[+].fullUrl = "urn:uuid:60c85205-13fb-407f-c318-ba6d77f6cbf5"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-38
* entry[+].fullUrl = "urn:uuid:cf70c7f5-61e0-08b2-b0bd-6c8de3f17d1e"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-39
* entry[+].fullUrl = "urn:uuid:03f32584-e817-3800-1a1b-0875aca196a6"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-40
* entry[+].fullUrl = "urn:uuid:653fb95b-8523-a180-7a42-4af7ecab60b8"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-41
* entry[+].fullUrl = "urn:uuid:55f1f4c4-ba3a-908f-8bff-9055f97365a2"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-42
* entry[+].fullUrl = "urn:uuid:90801144-7e54-4746-e61d-59846d98099a"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-43
* entry[+].fullUrl = "urn:uuid:0e01b4a8-0c09-1b58-2806-e92de3772100"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-44
* entry[+].fullUrl = "urn:uuid:fa85159b-5e47-2328-0818-19157328ab2d"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-45
* entry[+].fullUrl = "urn:uuid:b2dd1122-47d5-1e4e-7032-522c3409f196"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-46
* entry[+].fullUrl = "urn:uuid:d23cab05-9bd9-e67d-0b24-067e094862f5"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-47
* entry[+].fullUrl = "urn:uuid:029b7c8b-a683-6189-4b28-69eac44785df"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-48
* entry[+].fullUrl = "urn:uuid:ddd1124f-f22d-73d9-0205-f23d19ff9d5b"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-49
* entry[+].fullUrl = "urn:uuid:58da6db5-8b94-885e-d69d-2c1d61bcf5fc"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-50
* entry[+].fullUrl = "urn:uuid:c129aa0a-0324-f741-b3b6-2ede35eef2de"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-51
* entry[+].fullUrl = "urn:uuid:4e41601f-3e85-2b45-51a9-8e939a43c9f7"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-52
* entry[+].fullUrl = "urn:uuid:08f49bc3-1cd1-b942-1723-4aa950b4c77d"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-53
* entry[+].fullUrl = "urn:uuid:d669559e-2e5a-c271-c1ff-cde1228d4077"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-54
* entry[+].fullUrl = "urn:uuid:3a33a26e-3532-06a6-90a9-e0566342cd49"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-BundleSS-55