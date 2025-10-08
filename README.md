# Next.js Application Containerization and Deployment

<img width="1400" height="799" alt="Screenshot 2025-10-08 at 11 44 58 AM" src="https://github.com/user-attachments/assets/04796558-35f6-4ad2-ab14-789943eb98b0" />


## Setup Instructions
- Ensure you have installed the following prerequisites:
  - Docker
  - Minikube
  - kubectl (Kubernetes CLI)
- Clone the repository:https://github.com/MurtazaGitt/my-assaesment-rep

## Local Run Commands
- Build the Docker image locally:
  docker build -t docker .

  <img width="1382" height="832" alt="Screenshot 2025-10-08 at 11 39 57 AM" src="https://github.com/user-attachments/assets/77c796c7-2e2b-473d-9a1d-99e2bc3ac8d4" />

  
- Run the Docker container locally:
  docker run -it -v .:/src -p 3000:3000 docker

  
<img width="1382" height="832" alt="Screenshot 2025-10-08 at 11 42 04 AM" src="https://github.com/user-attachments/assets/47bcc43c-610f-486c-9671-300dabe5d156" />

  
- Apply Kubernetes manifests to deploy the application:
- 
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

## Author Syed Murtuza Ali Abdi - mutuazaali@gmail.com
## submission git repository - https://github.com/MurtazaGitt/my-assaesment-rep
## GHCR - https://github.com/murtazagitt/my-assesment-rep/pkgs/container/nextjs-app


  


