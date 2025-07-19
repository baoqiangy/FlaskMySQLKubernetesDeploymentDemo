# Apply the configurations in order
kubectl apply -f mysql-pv-claim.yml
kubectl apply -f mysql-deployment.yml
kubectl apply -f mysql-service.yml

# Wait for MySQL to be ready
kubectl rollout status deployment/mysql

# Deploy the Flask app
kubectl apply -f flask-deployment.yml
kubectl apply -f flask-service.yml
