# Next.js Application Containerization and Deployment

## Setup Instructions
- Ensure you have installed the following prerequisites:
  - Docker
  - Minikube
  - kubectl (Kubernetes CLI)
- Clone the repository:https://github.com/MurtazaGitt/my-assaesment-rep

## Local Run Commands
- Build the Docker image locally:
  docker build -t docker .
- Run the Docker container locally:
  docker run -it -v .:/src -p 3000:3000 docker
- Apply Kubernetes manifests to deploy the application:

  1)kubectl apply -f k8s/deployment.yaml
       
  2)kubectl apply -f k8s/service.yaml

- Verify pods and services:

  kubectl get pods

  kubectl get services


## Accessing the Application
- Get the URL to access the service running in Minikube:

   minikube service nextjs-service

- Open the URL in your browser to see the deployed Next.js application.

## CI/CD Automation (GitHub Actions)
- On pushing to the main branch, GitHub Actions workflow:
- Builds the Docker image
- Pushes the image to GitHub Container Registry (GHCR)

## Notes
- Dockerfile follows best practices for image optimization and security.
- All deployment and image management is automated via GitHub Actions per assignment requirements.


  


