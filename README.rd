= PostgreSQLで高速・高機能な日本語全文検索

PostgreSQLで日本語の全文検索をするには、LIKE演算子を使って実現できますが、インデックスを使用しないため、データ量が多い場合には低速です。
英文については、インデックスを使用した全文検索が可能ですが、日本語には対応していません。
PGroonga(ぴーじーるんが)は、全言語対応の高速な全文検索機能をPostgreSQLで使えるようにする拡張で、安定して高速で、かつ高機能です。

本発表では、PGroongaの速さや便利さを紹介します。

== ライセンス

=== スライド

CC BY-SA 4.0

原著作者：堀本泰弘

=== Groonga・PGroonga・Mroonga・Rroongaのロゴ

CC BY 3.0

原著作者：Groongaプロジェクト

=== 株式会社クリアコードのロゴ

CC BY-SA 4.0

原著作者：株式会社クリアコード

=== 青空文庫の書籍一覧データ

CC BY-SA 2.1

原著作者：河原　翔
作品タイトル：青空文庫 形態素解析データ集
URL：http://aozora-word.hahasoha.net/

=== 日本全国の住所データ

原著作者：有限会社ゼネラルソフトウェア
URL:http://jusyo.jp/index.html

=== Wikipedia日本語版のタイトル一覧

CC-BY-SA 3.0 Unported

原著作者：ウィキペディア日本語版
URL：https://ja.wikipedia.org/

== 作者向け

=== 表示

  rake

=== 公開

  rake publish

== 閲覧者向け

=== インストール

  gem install rabbit-slide-komainu8-july-tech-festa-2021-winter

=== 表示

  rabbit rabbit-slide-komainu8-july-tech-festa-2021-winter.gem

