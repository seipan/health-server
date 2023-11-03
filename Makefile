.PHONY: build-kube
build-kube:
	docker build -t yadon3141/health .
	cd k8s/manifest/app && kubectl apply -k .
	cd k8s/manifest/nginx && kubectl apply -f nginx-ingress.yml

.PHONY: re-kube
re-kube:
	docker build -t yadon3141/health .
	cd k8s/manifest/app && kubectl rollout restart deploy health


.PHONY: docker-push
docker-push:
	docker build -t yadon3141/health .
	docker push yadon3141/health