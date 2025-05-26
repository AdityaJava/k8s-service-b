# Build Docker image for service-b
docker build -t k8s-service-b:latest ./k8s-service-b

# If using kind, load the image into the kind cluster
kind load docker-image k8s-service-b

# Deploy service-b to Kubernetes
kubectl apply -f k8s-service-b-deployment.yaml
kubectl apply -f k8s-service-b-service.yaml
