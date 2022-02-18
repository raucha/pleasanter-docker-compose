# pleasanter-docker-compose

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

## launch pleasanter as daemon

```
docker-compose up -d
```