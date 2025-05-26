# Make sure we have given path in deployment.yaml to image on dockerhub like below
 image: aditydud/k8s-service-b:latest


# Create spring boot jar
Goto --> Tasks --> build --> bootjar

# Build Docker image for service-b
docker build -t k8s-service-b:latest .

# Push docker image to dockerhub
docker tag k8s-service-b:latest aditydud/k8s-service-b:latest
docker push aditydud/k8s-service-b:latest


# Deploy service-b to Kubernetes
kubectl apply -f k8s-service-b-deployment.yaml
kubectl apply -f k8s-service-b-service.yaml