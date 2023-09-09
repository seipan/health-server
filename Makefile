.PHONY: build-kube
build-kube:
	docker build -t yadon3141/health .
	cd k8s/app && kubectl apply -k .

.PHONY: re-kube
re-kube:
	docker build -t yadon3141/health .
	cd k8s/app && kubectl rollout restart deploy health