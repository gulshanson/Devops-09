# MyApp

A containerized Node.js and React.js microservices application with a MongoDB backend, deployed on **AWS EKS** using **Helm** and managed through CI/CD best practices.

---

## 📖 Description
MyApp is a microservices-based web application designed to demonstrate **modern DevOps practices**.  
The application consists of:
- **Frontend:** React.js  
- **Backend:** Node.js & Express  
- **Database:** MongoDB  

It is fully containerized using Docker, orchestrated with Kubernetes, and deployed to **AWS Elastic Kubernetes Service (EKS)**.  
Helm is used to manage Kubernetes deployments, and Nginx acts as a reverse proxy to route traffic securely.

---

## ✨ Features
- REST API built with Node.js and Express
- Frontend developed with React.js
- Persistent storage with MongoDB
- Containerized using Docker & multi-stage builds
- Deployment managed with Helm
- Secure traffic routing via Nginx reverse proxy
- CI/CD pipeline using GitHub Actions
- Infrastructure as Code with Terraform

---

## 🏗️ Architecture

![Architecture](docs/architecture.png)

*Diagram showing:*  
Frontend → Nginx → Backend → MongoDB  
Deployment managed by Kubernetes on AWS EKS.

---

## 🛠 Tech Stack
| Category       | Technology |
|----------------|------------|
| **Frontend**   | React.js |
| **Backend**    | Node.js, Express |
| **Database**   | MongoDB |
| **Containerization** | Docker, Docker Compose |
| **Orchestration** | Kubernetes (EKS) |
| **Deployment Management** | Helm |
| **Infrastructure as Code** | Terraform |
| **CI/CD** | GitHub Actions |
| **Reverse Proxy** | Nginx |
| **Cloud Provider** | AWS |

---

## 📋 Prerequisites
Ensure you have the following installed on your machine before running the project:

- [Node.js](https://nodejs.org/) (v18 or later)
- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- [kubectl](https://kubernetes.io/docs/tasks/tools/)
- [Helm](https://helm.sh/docs/intro/install/)
- [AWS CLI](https://aws.amazon.com/cli/)
- MongoDB (if running locally)

---

## ⚙️ Environment Variables

Create a `.env` file in the root directory to store environment variables.

| Variable        | Description                        | Default Value |
|----------------|------------------------------------|---------------|
| `MONGO_URI`    | MongoDB connection string           | `mongodb://localhost:27017/myapp` |
| `NODE_ENV`     | Environment (development/production)| `development` |
| `PORT`         | Backend API port                    | `5000` |

---

## 🚀 Getting Started

### 1. Clone the Repository
```bash
git clone https://github.com/username/myapp.git
cd myapp
