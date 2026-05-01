kubectl create namespace argocd
kubectl label namespace argocd istio-injection=enabled

kubectl create namespace argocd-prod
kubectl label namespace argocd-prod istio-injection=enabled

helm repo add argo https://argoproj.github.io/argo-helm
helm install argocd argo/argo-cd -n argocd --version 6.9.3 -f values.yaml
helm install argocd argo/argo-cd -n argocd-prod --version 6.9.3 -f values.yaml
