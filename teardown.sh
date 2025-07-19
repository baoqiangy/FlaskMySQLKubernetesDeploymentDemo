# Delete the Flask service
kubectl delete -f flask-service.yaml

# Delete the Flask deployment
kubectl delete -f flask-deployment.yaml

# Delete the MySQL service
kubectl delete -f mysql-service.yaml

# Delete the MySQL deployment
kubectl delete -f mysql-deployment.yaml

# Delete the persistent volume claim
kubectl delete -f mysql-pv-claim.yaml
