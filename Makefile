kind-up:
	kind create cluster

kind-down:
	kind delete cluster

flux-check:
	flux check --pre

flux-bootstrap: flux-check
	flux bootstrap github \
	--owner=$$GITHUB_USER \
	--repository=devops-poc-fleet-infra \
	--branch=main \
	--path=./clusters/my-cluster \
	--personal