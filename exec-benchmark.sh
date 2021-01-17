#!/bin/bash

pushd benchmark/date/
wget http://aozora-word.hahasoha.net/aozora_word_list_utf8.csv.gz
gunzip -d aozora_word_list_utf8.csv.gz
wget http://jusyo.jp/downloads/new/csv/csv_zenkoku.zip
unzip csv_zenkoku.zip
wget http://dumps.wikimedia.org/jawiki/latest/jawiki-latest-all-titles.gz
gunzip -d jawiki-latest-all-titles.gz
sed s/\"/\"\"/g jawiki-latest-all-titles | sed s/^/\"/g | sed s/$/\"/g > jawiki-latest-all-titles.tmp
popd

sudo docker-compose up -d
sleep 3
psql -h localhost -U PGroonga --command 'CREATE DATABASE benchmark'
psql -h localhost -U PGroonga -d benchmark -f benchmark/aozora.sql
psql -h localhost -U PGroonga -d benchmark -f benchmark/address.sql
psql -h localhost -U PGroonga -d benchmark -f benchmark/jawikipedia.sql
sudo docker-compose down
sleep 3
sudo docker-compose up -d
sleep 3
psql -h localhost -U PGroonga --command 'CREATE DATABASE benchmark_pgroonga'
psql -h localhost -U PGroonga -d benchmark_pgroonga --command 'CREATE EXTENSION pgroonga'
psql -h localhost -U PGroonga -d benchmark_pgroonga -f benchmark/aozora-pgroonga.sql
psql -h localhost -U PGroonga -d benchmark_pgroonga -f benchmark/address-pgroonga.sql
psql -h localhost -U PGroonga -d benchmark_pgroonga -f benchmark/jawikipedia-pgroonga.sql
sudo docker-compose down



