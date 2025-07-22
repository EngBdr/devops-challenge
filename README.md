# DevOps Challenge App

## ✅ Overview

This is a .NET 9 Web API application containerized with Docker and deployed to Azure Kubernetes Service (AKS) using Terraform and GitHub Actions.

## 🚀 Features

- .NET 9 Web API
- Dockerfile for containerization
- CI/CD via GitHub Actions
- Infrastructure as Code using Terraform
- PostgreSQL stub
- Optional Helm Chart for K8s deployment

## 📦 Run Locally

```bash
docker build -t devops-challenge-app .
docker run -d -p 8080:80 devops-challenge-app
# Visit http://localhost:8080/swagger
```

## 📁 Structure

- DevOpsChallengeApp/ → .NET Web API project
- infra/ → Terraform infrastructure
- .github/workflows → CI/CD pipeline
- devops-challenge-chart/ → Helm chart (separate download)

## 🤖 AI Tools Used

- ChatGPT to assist with Terraform templates, CI/CD pipeline, and project scaffolding
