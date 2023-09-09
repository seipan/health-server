# health-server
🐳healthエンドポイントだけを備えたサーバーをk8sで構築したい🐳

## Setup
ビルドする
```
make build-kube
```

## API
health api
```
GET http://localhost:8080/health
GET http://localhost:8080/
```

response
```
{
    "message": "ok"
}
```