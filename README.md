# pleasanter-docker-compose

![example branch parameter](https://github.com/raucha/pleasanter-docker-compose/actions/workflows/build-and-connection-test.yml/badge.svg)  
![last test date](https://byob.yarr.is/raucha/pleasanter-docker-compose/time)  
![last suc date](https://byob.yarr.is/raucha/pleasanter-docker-compose/suc_time)

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

### 参照元のセットアップ手順ページ

- 公式セットアップ手順ページ
  > [プリザンター .NET Core/PostgreSQLをUbuntuにインストールする](https://pleasanter.org/manual/install-ubuntu-postgresql)
