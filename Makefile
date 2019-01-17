build:
	docker build --tag=resp-appender .

run:
	docker run -it -p 2222:80 resp-appender

tag:
	docker tag resp-appender:latest ryanb58/resp-appender:latest

push:
	docker push ryanb58/resp-appender:latest

run-local:
	docker run -it -p 2222:80 ryanb58/resp-appender:latest


minikube-start:
	minikube start

minikube-stop:
	minikube stop

minikube-delete:
	minikube delete

istio-download:
	curl -L https://git.io/getLatestIstio | sh -

minikube-setup-istio:
	kubectl apply -f install/kubernetes/helm/istio/templates/crds.yaml
	kubectl apply -f install/kubernetes/istio-demo-auth.yaml
	kubectl get svc -n istio-system

