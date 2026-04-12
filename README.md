# 🚀 Blue-Green Deployment using Kubernetes

## 📌 Project Overview

This project demonstrates Blue-Green Deployment using Kubernetes with Minikube.

* Blue = v1 (basic UI)
* Green = v2 (updated UI)

Traffic switching is done using Kubernetes Service selector.

---

## ⚙️ Prerequisites

* Minikube
* kubectl

Start cluster:

```bash
minikube start
```

---

## 🚀 Setup

```bash
git clone https://github.com/gaikwaduddhav/blue-green-k8s.git
cd blue-green-k8s
./setup.sh
```

---

## 🌐 Access Application

```bash
minikube service myapp-service
```

---

## 🔁 Switch Blue → Green

```bash
kubectl edit svc myapp-service
```

Change:

```
app: blue → app: green
```

---

## 🧠 Concept

* Two deployments run simultaneously
* Service routes traffic
* Zero downtime switching

---

## 📸 Demo

Blue → Green switching in real-time

