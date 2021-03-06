このページは、令和2年度厚生労働科学特別研究事業「診療情報提供書, 電子処方箋等の電子化医療文書の相互運用性確保のための標準規格の開発研究」において研究班が策定した<a href="https://std.jpfhir.jp/wp-content/uploads/2021/05/eCheckup_betaRel.zip">健康診断結果報告書FHIR®記述仕様書案</a>をもとに引用・再構成して作成しています。  
以下で ***本記述仕様書案*** および ***本文書*** は、研究班が策定した<a href="https://std.jpfhir.jp/wp-content/uploads/2021/05/eCheckup_betaRel.zip">健康診断結果報告書FHIR®記述仕様書案</a>を示します。  

本記述仕様書案は、HL7 CDA R2 構造化診療文書規格に基づき健診結果報告書に関する文書の記述仕様を定めた既存の「JAHIS標準 18-007 健康診断結果報告書規格 Ver. 2.0」（以下、「健診結果報告書規格」という）を参考にして、 HL7 FHIR（以下、単に「FHIR 」という）に準拠した記述の仕様案を策定し、仕様書案としてまとめた文書である。以下では本文書という。

本文書の作成は、令和2年度厚生労働行政推進調査事業費補助金 令和２年度厚生労働科学特別研究事業「診療情報提供書, 電子処方箋等の電子化医療文書の相互運用性確保のための標準規格の開発研究」 (課題番号20ＣＡ2013）における研究活動の一部として実施されているものである。

本文書は、仕様書案のドラフトである。従って、本文書に書かれていることは今後、大幅に変更される可能性がある。

### 目的および範囲

#### 目的

本規格は、健康診断結果報告書の内容をHL7 FHIR R4 .0.1に基づいた形式で電子的に記述するための規格である。

本規格を「高齢者の医療の確保に関する法律（昭和57年法律第80号）」に規定する特定健診の結果情報を健診実施機関が保険者等に対して電子的に提出する際に使用する為の電子的なデータ標準様式として使うことはできない。

本規格は、HL7 FHIR R4 .0.1 に基づいて規定する。

#### 範囲

本規格には検体検査、生理検査、波形情報、放射線等の画像情報など付帯情報を添付する際の規格が含まれているが、カルテあるいは各種サマリ等の内容に関する規格は含まれていない。問診データは通常の健康診断結果報告書では受診者へ提供されないが、特定健診では管理データとなって保管され、人間ドック等としても重要な情報で、電子化され受診者等へ結果報告が可能なように本規格でも一般の問診項目も含めて電子的に記述できることとした。また本規格が定める健康診断結果報告書の提供手段、管理方法、利用法については別規格等などに委ね、本規格の範囲ではない。

また、それぞれの健診に対して個別に詳細規格が定められている場合はそちらを優先する。

### 引用規格および用語

#### 引用規格

1. HL7 FHIR R4 .0.1
1. 特定健診の電子的なデータ標準様式 特定健診情報ファイル仕様説明書 Version3
1. JAHIS 18-007 健康診断結果報告書規格 Ver.2.0

#### 用語と定義

##### FHIRリソース

HL7 FHIRにおいて、「患者」や「医師」、「検査」、「診察」といった、ヘルスケアに関連する「ビジネスオブジェクト」のデータ要素、制約、および関係を定義した情報モデルの集合を「リソース」と呼ぶ。リソースは、FHIRで定義される全ての情報交換の構成要素として利用される。

##### 報告・提出・提供

健診結果報告書規格に準じて、法律によって報告が義務付けられている報告を「提出」、任意に個人の要求により報告するものを「提供」とした。両者を区別しない場合は「報告」とした。

##### 検査区分

健診では、身体計測情報、血圧等情報、肝機能、腎機能等の様に幾つかの検査項目を機能別にまとめて判定を行う場合が多い。このように複数のデータ項目をまとめたものを健診結果報告書規格に準じて「検査区分」と呼ぶ。「特定健診項目コード表」では「区分番号」および「区分名称」が記述されている。人間ドック等では健診実施機関により項目のまとめ方が異なるため、「特定健診項目コード表」とは別の「区分名称」も例示している。それ以外に、必要があれば各健診実施機関等でも定義して使用することができる。

#### 記号及び略語

*  HL7 : Health Level Seven
*  CDA R2：Clinical Document Architecture Release 2
*  FHIR : Fast Healthcare Interoperability Resources
*  DICOM : Digital Imaging and Communications in Medicine
*  MFER : Medical waveform Format Encoding Rules
