= PostgreSQLで高速・高機能な日本語全文検索

PostgreSQLで日本語の全文検索をするには、LIKE演算子を使って実現できますが、インデックスを使用しないため、データ量が多い場合には低速です。
英文については、インデックスを使用した全文検索が可能ですが、日本語には対応していません。
PGroonga(ぴーじーるんが)は、全言語対応の高速な全文検索機能をPostgreSQLで使えるようにする拡張で、安定して高速で、かつ高機能です。

本発表では、PGroongaの速さや便利さを紹介します。

== ライセンス

=== スライド

CC BY-SA 4.0

原著作者：堀本泰弘

=== PGroongaのロゴ

CC BY 3.0

原著作者：Groongaプロジェクト

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

