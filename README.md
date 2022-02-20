# pleasanter-docker-compose

![example branch parameter](https://github.com/raucha/pleasanter-docker-compose/actions/workflows/build-and-connection-test.yml/badge.svg)  
![テスト実施 at](https://byob.yarr.is/raucha/pleasanter-docker-compose/time)  
![起動確認成功 at](https://byob.yarr.is/raucha/pleasanter-docker-compose/suc_time)

## 動作確認状況

- このリポジトリは毎日動作確認を実施している．
  - テスト項目
    - `docker-compose`でDockerfileがビルドできること
    - pleasanterを立ち上げてトップページにアクセスできること
  - テスト実施方法
    - `Github Actions`で毎朝10時に実行
- テストの結果は↑のバッジに反映される．

## Getting started

### launch pleasanter

```bash
git clone http://raucha/pleasanter-docker-compose
cd pleasanter-docker-compose
docker-compose build
docker-compose up
#-> pleasanter is up on http://localhost:5001
```

### Access pleasanter

- open [http://localhost:5001](http://localhost:5001) in browser

---

### Test pleasanter is up

```
./test/test.bash
```

### launch pleasanter as daemon

```
docker-compose up -d
```

---

### メモ

- どうもpleasanterのバージョンごとのセットアップ手順の変化が激しい？
- 先人の作られたpleasanterのdocker環境がどれも動作しなくなっていた
  - [twintee/pleasanter-docker](https://github.com/twintee/pleasanter-docker)
  - [coleyon/pleasanter-docker](https://github.com/coleyon/pleasanter-docker)
- → 毎日の自動テストで実行可能が維持されてることを確認している．


### 参照したセットアップ手順ページ

- 公式セットアップ手順ページ
  > [プリザンター .NET Core/PostgreSQLをUbuntuにインストールする](https://pleasanter.org/manual/install-ubuntu-postgresql)
