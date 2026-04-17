kubectl create namespace argocd


helm repo add argo https://argoproj.github.io/argo-helm
helm install argocd argo/argo-cd -n argocd --version 9.5.2 -f values.yaml
