# Build Docker images
docker build -t service-a:latest ./service-a
docker build -t service-b:latest ./service-b

# If using kind, load images into the kind cluster
kind load docker-image service-a
kind load docker-image service-b

# Deploy service-a to Kubernetes
kubectl apply -f service-a-deployment.yaml
kubectl apply -f service-a-service.yaml

# Deploy service-b to Kubernetes
kubectl apply -f service-b-deployment.yaml
kubectl apply -f service-b-service.yaml
