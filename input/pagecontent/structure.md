このページは、令和2年度厚生労働科学特別研究事業「診療情報提供書, 電子処方箋等の電子化医療文書の相互運用性確保のための標準規格の開発研究」において研究班が策定した<a href="https://std.jpfhir.jp/wp-content/uploads/2021/05/eCheckup_betaRel.zip">健康診断結果報告書FHIR®記述仕様書案</a>をもとに引用・再構成して作成しています。  
以下で ***本文書*** は、研究班が策定した<a href="https://std.jpfhir.jp/wp-content/uploads/2021/05/eCheckup_betaRel.zip">健康診断結果報告書FHIR®記述仕様書案</a>を示します。  

### 文書構造

文書構造は、健診結果報告書規格と相互運用性を持たせるために、FHIR Document を利用し以下の構造とする。図 1に文書構造の概要を示す。

受診者や作成者など健診情報管理を記述する文書ヘッダに相当する部分、特定健診をはじめとする各種制度に基づく健診結果を記述する健診セクションと問診セクション、及び、添付書類を外部ファイルとして管理する添付書類セクションからなる。

健診セクションと問診セクションは、健診結果の作成者（情報ソース）が受診者本人かどうかによって使い分ける。つまり、受診者本人より作成されるものを問診セクションに格納し、それ以外の健診項目を健診セクションに格納する。

添付書類セクションは、DICOMファイル、波形ファイル、JPEG等の画像ファイル、PDFファイル、XMLファイル等を外部ファイルとし、そのファイルへのリンク情報やハッシュ値からなる。

また、健診結果報告書の全ての内容をFHIRリソースで構造的に記述するのではなく、特定健診仕様に従うCDA R2形式のXMLファイル、および、健康診断結果報告書規格に従うCDA R2形式のXMLファイルを、本文書の添付書類としてFHIRリソース中に直接含むことも可能にする。その場合は、健診セクション、問診セクションは使用せず、添付書類セクションのみが使用される。図 2 に、CDA R2形式のXMLファイルをそのまま添付書類セクションに含む場合の文書構造の概要を示す。

FHIR において、診療文書は、Bundleリソースを使用したFHIR Documentを使用して表現される。FHIR Documentは、Bundleリソースのtype要素値を”document”に設定した、Bundleリソースの種類の１つである。本文書では、一人の受診者に対する健康診断結果報告書を、FHIR DocumentとしてBundleリソースにより記述する。

<table style="border: 0px none">
<tr><td  style="border: 0px none"><img src="jpeCheckupfigure1.PNG" width="1016" height="809"></td></tr>
<tr><th style="border: 0px none; text-align: center">図1 文書構造の概要（FHIRリソースで構造化する場合）</th></tr>
</table>

<table style="border: 0px none">
<tr><td  style="border: 0px none"><img src="jpeCheckupfigure2.PNG" width="1033" height="497"></td></tr>
<tr><th style="border: 0px none; text-align: center">図2 文書構造の概要（CDA R2形式のXMLファイルを添付して使用する場合）</th></tr>
</table>

### 健康診断結果報告書の識別

#### 報告区分コード

FHIR Compositionリソースのcategory要素に指定する報告区分コードは、以下とする。本区分コードは、ファイルを作成し報告する「事由区分」の意味で使用する。

*  10：特定健診情報（受診者の任意な要求等により健診結果情報として提供する場合）
*  40：特定健診以外の健診結果を42以降の区別をつけずに送付する場合
*  42：広域連合の保健事業
*  43：事業者健診（労働安全衛生法に基づく健診）
*  48：人間ドック
*  90：その他（10～48にあてはまらない場合）

報告区分コードのコード体系を示す Coding.system 要素には、全て本規格で定義した「urn:oid:2.16.840.1.113883.2.2.1.6.1001」を使用する。10、40、90は、高齢者の医療の確保に関する法律（昭和57年法律第80号）」に規定する特定健診の結果情報を健診実施機関が保険者等に対して電子的に提出する際にも使用され、この場合はコード体系としてOID「1.2.392.200119.6.1001」が用いられているが、本規格ではこれと区別する為に「2.16.840.1.113883.2.2.1.6.1001」を用いる。

#### 健診プログラムサービスコード

FHIR Compositionリソースの Composition.event.serviceTypeは、健診プログラムサービスコードとし、健診実施時にどのような区分として実施されたかを示す。以下のいずれかの目的で実施された健診（検診）によってデータが得られたかについて記述する。複数の健診事業を共同で実施する場合には、特定健診以外の最も主たる健診事業のコードを記述するか、複数の event 要素を用いる。

電子ファイル作成を入力機関が代行する場合など、この情報が不明な場合には「000（不明）」を設定する。必須の健診結果が格納されているかどうかを判定するために必要となる情報である。

*  000：不明
*  010：特定健診
*  020：広域連合の保健事業
*  030：事業者健診（労働安全衛生法に基づく健診）
*  990：上記ではない健診（検診）

コード体系を表すCoding.systemに関しては「urn:oid:1.2.392.200119.6.1002」を用いる。

#### 健康診断結果記述セクション識別コード

健診結果診断記述文書は、以下のセクションから構成される。

*  健診結果セクション
*  問診結果セクション
*  添付書類セクション

特定健診の電子的なデータ標準様式、及び、健診結果報告書規格とはセクションの使用方法が異なることに注意する。健診結果セクションと問診結果セクションの使い分けは、「4.1.1 文書構造」で説明した通り、健診受診者本人が作成（回答）した結果か否かで決定される。

#### ヘッダ部報告区分コードとボディ部セクション識別コードとの関係

労働安全衛生法（以下、労安法）に基づく健診や学校保健安全法に基づく職員健診、任意の人間ドック等の健診（以下、任意健診）など、種々の健診結果を報告する場合に本規格を使用することができる。

一般に健診実施機関が労安法に基づく健診を行う場合には、その健診において特定健診項目をすべて含むように実施されることが想定される。こうした状況において、健診実施機関からの電子的なファイル作成による報告には、次の2つの報告形態が想定される。

①健診実施機関は、保険者に提出する特定健診情報ファイルを「高齢者の医療の確保に関する法律（昭和57年法律第80号）」に基づいて作成・提出する（特定健診分）ほか、それとは別に、健診委託元（事業者等）にすべての健診項目の結果を含めた健診情報ファイル（たとえば労安法分）を本規格に準拠して別々のファイルとして作成し提出する。

②健診実施機関は、健診委託元（事業者等）にすべての健診項目の結果を含めた健診情報ファイルをひとつだけ本規格に準拠して作成し提出する。提出を受けた健診委託元（事業者等）はこの健診情報ファイルを加工処理し、保険者に提出する特定健診情報ファイル（特定健診分）を「高齢者の医療の確保に関する法律（昭和57年法律第80号）」に基づいて作成・提出する。この場合において、加工処理を代行機関に委託することもあり得る。

健診結果報告書規格においては、この２つの報告形態をサポートしているが、本文書では、ドキュメントの二次利用における利便性を考慮し、①の方法での報告形態のみをサポートするものとする。

同一の検査項目の結果が同じファイルの異なるセクションに重複して現れる場合、受信側は報告区分コードに従いその報告区分に対応するセクションに格納されているデータを優先的に処理し、それとは異なるセクションに出現する同一健診項目のデータは無視すること。仮に異なる結果が格納されていてもこのルールにより結果は一通りに定められる。
