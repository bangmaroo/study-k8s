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
