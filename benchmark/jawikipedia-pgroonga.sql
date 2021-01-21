CREATE TABLE wikipedia_title (title text);
\COPY wikipedia_title from benchmark/date/jawiki-latest-all-titles.tmp csv header
SELECT count(*) FROM wikipedia_title;
CREATE INDEX wikipedia_title_idx ON wikipedia_title USING pgroonga (title);
EXPLAIN ANALYZE SELECT title FROM wikipedia_title WHERE title &@~ '全文検索';
