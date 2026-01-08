
# Node CI/CD Project

A minimal Node.js app with unit tests and a Jenkins pipeline. Includes Dockerfile and Jenkinsfile.

## Quick start

```bash
npm install
npm test
npm start
```

## Docker

```bash
docker build -t my-node-app:local .
docker run -d -p 3000:3000 --name my-node-app my-node-app:local
```

## Git initialization

```bash
git init
git add .
git commit -m "Initial pipeline setup"
```
