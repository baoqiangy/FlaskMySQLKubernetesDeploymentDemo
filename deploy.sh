# Apply the configurations in order
kubectl apply -f mysql-pv-claim.yaml
kubectl apply -f mysql-deployment.yaml
kubectl apply -f mysql-service.yaml

# Wait for MySQL to be ready
kubectl rollout status deployment/mysql

# Deploy the Flask app
kubectl apply -f flask-deployment.yaml
kubectl apply -f flask-service.yaml
