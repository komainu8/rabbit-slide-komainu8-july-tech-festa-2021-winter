CREATE TABLE zenkoku (
    "住所CD" text,
    "都道府県CD" text,
    "市区町村CD" text,
    "町域CD" text,
    "郵便番号" text,
    "事業所フラグ" text,
    "廃止フラグ" text,
    "都道府県" text,
    "都道府県カナ" text,
    "市区町村" text,
    "市区町村カナ" text,
    "町域" text,
    "町域カナ" text,
    "町域補足" text,
    "京都通り名" text,
    "字丁目" text,
    "字丁目カナ" text,
    "補足" text,
    "事業所名" text,
    "事業所名カナ" text,
    "事業所住所" text,
    "新住所CD" text);
\COPY zenkoku from benchmark/date/zenkoku.csv with csv header encoding 'sjis'
SELECT count(*) FROM zenkoku;
EXPLAIN ANALYZE SELECT "都道府県" || "市区町村" || "町域" 住所 FROM zenkoku WHERE "市区町村" LIKE '%青%';
