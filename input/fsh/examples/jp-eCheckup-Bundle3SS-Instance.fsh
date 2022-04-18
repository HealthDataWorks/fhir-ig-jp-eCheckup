Instance: jp-eCheckup-Bundle3SS
InstanceOf: Bundle
Title: "Bundleリソース　安衛法検診記述例"
Description: """労働安全衛生法検診の結果をFHIR Documentで記述したサンプルインスタンス。

|No|項目||設定値||
|---|---|---|---|---|
|1|報告区分||40:事業者健診||
|2|健診プログラムサービスコード||030：事業者健診||
|3|受診日||2020年10月1日||
|4|受診者|氏名|健診花子||
|5||カナ氏名|ケンシンハナコ||
|6||生年月日|1960年8月3日||
|7||性別|女性||
|8||住所|123-4567 神奈川県横浜市港区１－２－３||
|9||電話番号|03-1111-2222（自宅）||
|10||勤務先名|サンプル株式会社||
|11||勤務先所属|営業部||
|12||役職|課長||
|13||雇入年月日|2010年4月1日||
|14|健診実施機関|名称|厚生労働省第一病院||
|15||機関番号|1311234567||
|16||所在地|〒100-0001 東京都千代田区千代田９－９－９||
|17||電話番号|0123-456-7890||
|18|健診実施者|氏名|東京太郎||
|19||カナ氏名|トウキョウタロウ||
|20|健診セクション|身長|項目コード|9N001000000000001|
|21|||結果値|148.4|
|22|||単位|cm|
|23||体重|項目コード|9N006000000000001|
|24|||結果値|45.5|
|25|||単位|kg|
|26||BMI|項目コード|9N011000000000001|
|27|||結果値|20.7|
|28|||単位|kg/m2|
|29||腹囲|項目コード|9N016160100000001|
|30|||結果値|58|
|31|||単位|cm|
|32|||測定方法|1 回目|
|33||業務歴|項目コード|9N051000000000049|
|34|||結果値|特記なし|
|35||既往歴|項目コード|9N056000000000011|
|36|||結果値|1:特記事項有り|
|37||具体的な既往歴|項目コード|9N056160400000049|
|38|||結果値|ヘルニア、膀胱炎|
|39||自覚症状|項目コード|9N061000000000011|
|40|||結果値|1:特記事項有り|
|41||自覚症状所見|項目コード|9N061160800000049|
|42|||結果値|胃痛|
|43||他覚症状|項目コード|9N066000000000011|
|44||結果値|2:特記事項無し||
|45||収縮期血圧（１回目）|項目コード|9A751000000000001|
|46|||結果値|149|
|47|||単位|mmHg|
|48|||結果解釈コード|N|
|49|||測定方法|1 回目|
|50|||基準値下限|80 mmHg|
|51|||基準値上限|130 mmHg|
|52||拡張期血圧（１回目）|項目コード|9A761000000000001|
|53|||結果値|90|
|54|||単位|mmHg|
|55|||結果解釈コード|N|
|56|||測定方法|1 回目|
|57|||基準値下限|40 mmHg|
|58|||基準値上限|80 mmHg|
|59||中性脂肪|項目コード|3F015000002327101|
|60|||結果値|128|
|61|||単位|mg/dl|
|62|||結果解釈コード|N|
|63|||測定方法|可視吸光光度法（酵素比色法・グリセロール消去）|
|64|||基準値下限|50 mmHg|
|65|||基準値上限|149 mmHg|
|66||ＨＤＬコレステロール|項目コード|3F070000002327101|
|67|||結果値|45|
|68|||単位|mg/dl|
|69|||結果解釈コード|N|
|70|||測定方法|可視吸光光度法（直接法（非沈殿法））|
|71|||基準値下限|40 mg/dl|
|72|||基準値上限|96 mg/dl|
|73||ＬＤＬコレステロール|項目コード|3F077000002327101|
|74|||結果値|88|
|75|||単位|mg/dl|
|76|||結果解釈コード|N|
|77|||測定方法|可視吸光光度法（直接法（非沈殿法））|
|78|||基準値下限|70 mg/dl|
|79|||基準値上限|140 mg/dl|
|80||ＧＯＴ（ＡＳＴ）|項目コード|3B035000002327201|
|81|||結果値|32|
|82|||単位|U/l|
|83|||結果解釈コード|N|
|84|||測定方法|紫外吸光光度法（JSCC 標準化対応法）|
|85|||基準値下限|10 U/l|
|86|||基準値上限|40 U/l|
|87||ＧＰＴ（ＡＬＴ）|項目コード|3B045000002327201|
|88|||結果値|16|
|89|||単位|U/l|
|90|||結果解釈コード|N|
|91|||測定方法|紫外吸光光度法（JSCC 標準化対応法）|
|92|||基準値下限|5 U/l|
|93|||基準値上限|30 U/l|
|94||γ－ＧＴ（γ－ＧＴＰ）|項目コード|3B090000002327101|
|95|||結果値|55|
|96|||単位|U/l|
|97|||結果解釈コード|N|
|98|||測定方法|可視吸光光度法（JSCC 標準化対応法）|
|99|||基準値下限|0 U/l|
|100|||基準値上限|30 U/l|
|101||空腹時血糖|項目コード|3D046000001906202|
|102|||結果値|98|
|103|||単位|mg/dl|
|104|||結果解釈コード|N|
|105|||測定方法|電位差法（ブドウ糖酸化酵素電極法）|
|106|||基準値上限|99 mg/dl|
|107||採血時間（食後）|項目コード|9N141000000000011|
|108|||結果値|2：食後１０時間以上|
|109||尿糖|項目コード|1A020000000191111|
|110|||結果値|1：－|
|111||尿蛋白|項目コード|1A010000000191111|
|112|||結果値|1：－|
|113||血色素量|項目コード|2A030000001930101|
|114|||結果値|15|
|115|||単位|g/dl|
|116|||基準値下限|12.1 g/dl|
|117|||基準値上限|14.5g/dl|
|118||赤血球数|項目コード|1A010000000191111|
|119|||結果値|500|
|120|||単位|10*4 /mm3|
|121|||基準値下限|353 10*4/mm3|
|122|||基準値上限|454 10*4/mm3|
|123||心電図（所見の有無）|項目コード|9A110160700000011|
|124|||結果値|1:特記事項有り|
|125||心電図（所見）|項目コード|9A110160800000049|
|126|||結果値|ＱＴ延長|
|127||胸部エックス線検査（一般：直接撮影）（所見の有無）|項目コード|9N206160700000011|
|128|||結果値|1:特記事項有り|
|129||胸部エックス線検査（一般：直接撮影）（所見）|項目コード|9N206160800000049|
|130|||結果値|石灰化陰影|
|131||視力（右）|項目コード|9E160162100000001|
|132|||結果値|1.0|
|133||視力（左）|項目コード|9E160162200000001|
|134|||結果値|0.8|
|135||聴力（右、１０００Ｈｚ）|項目コード|9D100163100000011|
|136|||結果値|2:異常所見無し|
|137||聴力（右、４０００Ｈｚ）|項目コード|9D100163200000011|
|138|||結果値|2:異常所見無し|
|139||聴力（左、１０００Ｈｚ）|項目コード|9D100163500000011|
|140|||結果値|2:異常所見無し|
|141||聴力（左、４０００Ｈｚ）|項目コード|9D100163600000011|
|142|||結果値|2:異常所見無し|
|143||医師の診断（判定）|項目コード|9N511000000000049|
|144|||結果値|肝機能がわずかに異常ですが支障はないと思われます。|
|145||医師の意見|項目コード|9N511000000000049|
|146|||結果値|肝機能がわずかに異常ですが支障はないと思われます。|
|147|問診セクション|服薬１（血圧）|項目コード|9N701000000000011|
|148|||結果値|2：いいえ|
|149||服薬２（血糖）|項目コード|9N706000000000011|
|150|||結果値|2：いいえ|
|151||服薬３（脂質）|項目コード|9N711000000000011|
|152|||結果値|2：いいえ|
|153||喫煙|項目コード|9N736000000000011|
|154|||結果値|2：いいえ|"""
Usage: #example
* meta.versionId = "27"
* meta.lastUpdated = "2021-07-01T09:39:19.123+00:00"
* meta.source = "#iwcCWRqkg9NmEFr0"
* type = #document
* timestamp = "2020-10-21T12:12:21.123+00:00"
* entry[0].fullUrl = "urn:uuid:fd13ba04-3b58-ac07-fad6-464cec87691d"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-1
* entry[+].fullUrl = "urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-2
* entry[+].fullUrl = "urn:uuid:e5ea153d-fd94-adcc-fb27-df24f394d3fa"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-3
* entry[+].fullUrl = "urn:uuid:6c4ef273-df66-00ab-c021-d05c5a19e0ba"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-4
* entry[+].fullUrl = "urn:uuid:d1fb6063-8f12-4c2c-922a-7b5e467c8407"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-5
* entry[+].fullUrl = "urn:uuid:7f60d206-66c5-4998-931e-86bf2b2d0bdc"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-6
* entry[+].fullUrl = "urn:uuid:c00adf27-40ee-f30b-1cfa-b09fc557ce47"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-7
* entry[+].fullUrl = "urn:uuid:3af3232e-1579-d4f6-3578-aa1e799fdcad"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-8
* entry[+].fullUrl = "urn:uuid:6fed7a5c-ddbd-2cdf-cb2f-77b8e1e8a6c3"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-9
* entry[+].fullUrl = "urn:uuid:47904d61-1d8f-f28a-668f-ecf0f8566537"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-10
* entry[+].fullUrl = "urn:uuid:9363c32a-d276-36c0-2756-91d61144f4bb"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-11
* entry[+].fullUrl = "urn:uuid:7408c709-b173-205e-93e4-e84994b1234b"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-12
* entry[+].fullUrl = "urn:uuid:f9c17b18-8ae7-4bc3-d6d4-788957cd8630"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-13
* entry[+].fullUrl = "urn:uuid:df7d1219-a653-9562-20a8-0530b2a85252"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-14
* entry[+].fullUrl = "urn:uuid:519ee54e-9f00-754f-1759-580e862421cc"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-15
* entry[+].fullUrl = "urn:uuid:f2a35f0f-2808-7241-8b0d-862ea0ba1c86"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-16
* entry[+].fullUrl = "urn:uuid:9a2e3978-a98d-2e82-829f-435aa4e3ef50"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-17
* entry[+].fullUrl = "urn:uuid:8b03c6f4-b439-2d5a-85bb-3491e51d73ab"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-18
* entry[+].fullUrl = "urn:uuid:5d6f5a57-cf35-a808-bef3-a3993b50b934"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-19
* entry[+].fullUrl = "urn:uuid:35ac22fc-3d41-f4c0-59ce-86db54b27733"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-20
* entry[+].fullUrl = "urn:uuid:994ff41c-4de7-de26-0357-6b880c1f0d55"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-21
* entry[+].fullUrl = "urn:uuid:abe72ebb-2dbf-ea96-a331-80f96eb9b920"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-22
* entry[+].fullUrl = "urn:uuid:43bb00a5-ec1b-cd71-a982-bee5d7cae9a9"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-23
* entry[+].fullUrl = "urn:uuid:1cc48bef-b40d-46d4-826c-7ec838a26d6a"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-24
* entry[+].fullUrl = "urn:uuid:0e57b532-b5ab-880d-565a-56cf356c094f"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-25
* entry[+].fullUrl = "urn:uuid:15d6e055-ea88-fdd1-1d99-440d851ee410"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-26
* entry[+].fullUrl = "urn:uuid:a5598b7b-5fab-329c-ec00-19628a0a4959"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-27
* entry[+].fullUrl = "urn:uuid:ec8fc5e3-28af-4071-ad2c-425f01955396"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-28
* entry[+].fullUrl = "urn:uuid:9a778fff-b506-fef3-b02c-b6bd28c2686a"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-29
* entry[+].fullUrl = "urn:uuid:e828fa24-d30f-90d0-2fec-ca808edaeb15"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-30
* entry[+].fullUrl = "urn:uuid:070d1894-7dc0-8fbc-5190-665b2c92763c"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-31
* entry[+].fullUrl = "urn:uuid:2313d7a5-6d29-90f9-ef77-e79ed7b0ca20"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-32
* entry[+].fullUrl = "urn:uuid:94b070e7-e091-cc28-a390-72b9b7b24377"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-33
* entry[+].fullUrl = "urn:uuid:c9181b1b-5390-9f8e-3474-95fe63215e7a"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-34
* entry[+].fullUrl = "urn:uuid:e306832c-2a44-5b21-4aea-2dd73d0d436e"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-35
* entry[+].fullUrl = "urn:uuid:21610e81-2847-8572-a9e0-282016e14f23"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-36
* entry[+].fullUrl = "urn:uuid:8b3b3fdf-ae20-6b76-393d-206318026fc3"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-37
* entry[+].fullUrl = "urn:uuid:8484a76a-44f7-2198-9930-5ea0b97ce588"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-38
* entry[+].fullUrl = "urn:uuid:c37c6eaf-da9a-da01-3307-8b424738a960"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-39
* entry[+].fullUrl = "urn:uuid:9820d10c-88eb-b6c4-3ab6-14669c03d9bd"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-40
* entry[+].fullUrl = "urn:uuid:aab8a2d8-458e-f55d-eedc-3f28a5d74dcf"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-41
* entry[+].fullUrl = "urn:uuid:71b30370-53f2-9759-7b9c-9dc8347e965a"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-42
* entry[+].fullUrl = "urn:uuid:ceac8000-a0b2-888f-e151-2cc94a5a8652"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-43
* entry[+].fullUrl = "urn:uuid:1d960f4c-e93a-013c-b1dc-99e6f1e3ece3"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-44
* entry[+].fullUrl = "urn:uuid:fc7553a9-66b8-8183-773f-b27cde515ecf"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-45
* entry[+].fullUrl = "urn:uuid:66b3b991-4df7-4b3d-f9c7-965a1588bbf0"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-46
* entry[+].fullUrl = "urn:uuid:08f49bc3-1cd1-b942-1723-4aa950b4c77d"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-47
* entry[+].fullUrl = "urn:uuid:d669559e-2e5a-c271-c1ff-cde1228d4077"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-48
* entry[+].fullUrl = "urn:uuid:3a33a26e-3532-06a6-90a9-e0566342cd49"
* entry[=].resource = Inline-Instance-for-jp-eCheckup-Bundle3SS-49