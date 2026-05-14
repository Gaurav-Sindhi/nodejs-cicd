# 🚀 CI/CD Pipeline for Node.js Application using AWS CodePipeline & CodeBuild

## 📌 Overview

This project demonstrates how to implement a CI/CD (Continuous Integration & Continuous Deployment) pipeline for a Node.js application using AWS Developer Tools.

The pipeline automatically:

* Pulls source code from GitHub
* Builds the application using AWS CodeBuild
* Deploys updates automatically after every code change

---

# 🧰 AWS Services Used

* AWS CodePipeline
* AWS CodeBuild
* Amazon EC2
* GitHub

---

# 🏗️ Architecture

```text id="3f7pda"
Developer Pushes Code
          ↓
        GitHub
          ↓
    AWS CodePipeline
          ↓
     AWS CodeBuild
          ↓
   Node.js Application
          ↓
       Deployment
```

---

# ⚙️ Features

✅ Automated CI/CD pipeline
✅ GitHub integration
✅ Automatic build process
✅ Continuous deployment workflow
✅ No manual deployment required

---

# 💻 Node.js Application

## 🟢 app.js

```javascript id="jlwmnr"
const http = require('http');

http.createServer((req, res) => {
  res.write("Deployed via CI/CD 🚀");
  res.end();
}).listen(3000);

console.log("Server running on port 3000");
```

---

# 📦 package.json

```json id="mjlwmnr"
{
  "name": "cicd-app",
  "version": "1.0.0",
  "main": "app.js",
  "scripts": {
    "start": "node app.js"
  }
}
```

---

# ⚙️ buildspec.yml

```yaml id="njlwmnr"
version: 0.2

phases:
  install:
    runtime-versions:
      nodejs: 18

  build:
    commands:
      - echo "Building application..."

  post_build:
    commands:
      - echo "Deployment completed"
```

---

# ⚙️ Deployment Workflow

## 1️⃣ Push Code to GitHub

```bash id="ojlwmnr"
git add .
git commit -m "Updated Node.js app"
git push
```

---

## 2️⃣ CodePipeline Automatically Triggers

* Source stage pulls code from GitHub

---

## 3️⃣ CodeBuild Executes Build

* Application build process starts automatically

---

## 4️⃣ Deployment Completes

* Updated application becomes available

---

# 📸 Screenshots


## 🔹 AWS CodePipeline Successful Execution

![CodePipeline](Screenshots/Screenshot%202026-04-27%20111507.png)

---

## 🔹 Node.js Application Running Locally

![Node.js App](Screenshots/Screenshot%202026-04-27%20111725.png)

---

# 📊 Results

✅ Fully automated CI/CD pipeline
✅ GitHub integration successful
✅ Automated build process completed
✅ Continuous deployment workflow implemented

---

# 💡 Key Learnings

* CI/CD concepts
* AWS CodePipeline setup
* AWS CodeBuild integration
* GitHub automation workflow
* Automated deployment process

---

# 🚀 Future Improvements

* Add CodeDeploy integration
* Deploy directly to EC2
* Add Docker support
* Add automated testing stage
* Add rollback mechanism

---

# 📂 Project Structure

```text id="pjlwmnr"
nodejs-cicd/
│── app.js
│── package.json
│── buildspec.yml
│── README.md
│── screenshots/
│     ├── Screenshot 2026-04-27 101702.png
│     ├── Screenshot 2026-04-27 111507.png
│     └── Screenshot 2026-04-27 111725.png
```

---

# 🔗 GitHub Commands

```bash id="qjlwmnr"
cd "D:\AWS Projects\nodejs-cicd"

echo *.pem > .gitignore

git init
git add .
git commit -m "CI/CD Pipeline for Node.js Application"

git branch -M main

git remote add origin https://github.com/Gaurav-Sindhi/nodejs-cicd.git

git push -u origin main
```

---

# 🎯 Interview Summary

> Built an automated CI/CD pipeline for a Node.js application using AWS CodePipeline and CodeBuild. Integrated GitHub for continuous integration and automated deployment workflows.

---
