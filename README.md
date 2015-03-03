# 株索α

## 必要なもの

* [Padrino](http://jp.padrinorb.com/)
* [Groonga](http://groonga.org/ja/)

## データベースの準備

```
wget http://k-db.com/stocks/2015-03-03?download=csv
groonga -n tmp/db/kabusaku.db
./csv2json.rb stocks_2015-03-03.csv | ./load.rb
```
