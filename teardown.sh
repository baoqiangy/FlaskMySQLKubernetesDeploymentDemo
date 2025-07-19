# Delete the Flask service
kubectl delete -f flask-service.yml

# Delete the Flask deployment
kubectl delete -f flask-deployment.yml

# Delete the MySQL service
kubectl delete -f mysql-service.yml

# Delete the MySQL deployment
kubectl delete -f mysql-deployment.yml

# Delete the persistent volume claim
kubectl delete -f mysql-pv-claim.yml
