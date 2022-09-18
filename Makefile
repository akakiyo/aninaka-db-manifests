apply:
	kubectl create ns aninaka
	kubectl apply -f https://raw.githubusercontent.com/reactive-tech/kubegres/v1.1/kubegres.yaml
	kubectl apply -f postgres-secret.yaml
	kubectl apply -f postgres.yaml
	kubectl apply -f service.yaml

delete:
	kubectl delete -f service.yaml
	kubectl delete -f postgres.yaml
	kubectl delete -f postgres-secret.yaml
	kubectl delete -f https://raw.githubusercontent.com/reactive-tech/kubegres/v1.1/kubegres.yaml
	kubectl delete ns aninaka



