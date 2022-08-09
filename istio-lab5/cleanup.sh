kubectl delete sa customers-v1 web-frontend
kubectl delete deploy web-frontend customers-v1
kubectl delete svc customers web-frontend
kubectl delete vs customers web-frontend
kubectl delete gateway gateway
kubectl delete authorizationpolicy allow-ingress-frontend allow-web-frontend-customers deny-all
kubectl delete pod curl
