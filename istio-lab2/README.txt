Desplegar la aplicacion
=======================

# kubectl apply -f yml/gateway.yml 
# kubectl apply -f yml/customers.yml 
# kubectl apply -f yml/webfrontend.yml

Generar carga sobre la aplicacion
=================================

Obtener la dirección IPdel Web Front End

k get svc -o wide
NAME           TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)   AGE     SELECTOR
customers      ClusterIP   10.106.49.83    <none>        80/TCP    4m21s   app=customers
kubernetes     ClusterIP   10.96.0.1       <none>        443/TCP   90d     <none>
web-frontend   ClusterIP   10.104.233.84   <none>        80/TCP    4m13s   app=web-frontend

Generar carga
# while true; do curl -v http://10.104.233.84; done


Inyectar latencia y fallos
==========================
kubectl apply -f yml/customersdelay.yml
kubectl apply -f yml/customersfault.yml
