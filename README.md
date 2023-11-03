# health-server
🐳healthエンドポイントだけを備えたサーバーをk8sで構築したい🐳

tree .
```
.
├── Dockerfile
├── LICENSE
├── Makefile
├── README.md
├── go.mod
├── go.sum
├── k8s
│   └── manifest
│       ├── app
│       │   ├── components
│       │   │   ├── deployment.yaml
│       │   │   └── service.yaml
│       │   └── kustomization.yaml
│       ├── grafana
│       │   ├── deployment.yaml
│       │   ├── pvc.yaml
│       │   └── service.yaml
│       └── nginx
│           └── nginx-ingress.yml
└── main.go
```

## Setup
ビルドする
```
make build-kube
```

## Run
```
minikube service health-service
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

 ## License
Code licensed under 
[the MIT License](https://github.com/seipan/health-server/blob/main/LICENSE).
