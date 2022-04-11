# install Helm
sudo snap install helm --classic

# install juice-shop 
# helm hub url : https://artifacthub.io/packages/helm/securecodebox/juice-shop
# OWASP JuiceShop : https://owasp.org/www-project-juice-shop/

helm install my-juice-shop securecodebox/juice-shop --version 3.9.1

#Deployment
helm upgrade --install juice-shop secureCodeBox/juice-shop


helm list

NAME         	NAMESPACE	REVISION	UPDATED                                	STATUS  	CHART           	APP VERSION
my-juice-shop	jkkim    	1       	2022-04-11 18:31:35.128124001 +0900 KST	deployed	juice-shop-3.9.1	v13.0.3 


# Run Kube port-forward for External-Connecting. 
kubectl port-forward svc/my-juice-shop -n jkkim 3000:3000 --address=0.0.0.0 &

  helm create test-helm-chart
  cd test-helm-chart/
  helm version
  cat values.yaml 
  helm lint
  helm template .
  helm install hellohelm .

# Confirm SVC
  k get svc
  curl 10.103.153.98

# Helm list
  helm ls

# Modified values.yaml
  vi mod-values.yaml # modified port number 80 -> 8888

# helm install use to mod-values.yaml
  helm install -f mod-values.yaml hellohelm-mod .

# Confirm SVC
  k get svc
