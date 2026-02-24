---
name: devops
description: Deploy and manage cloud infrastructure on Cloudflare (Workers, R2, D1, KV, Pages), Docker containers, and Google Cloud Platform (Compute Engine, GKE, Cloud Run). Use when deploying serverless functions, containerizing apps, setting up CI/CD, optimizing cloud costs, or building cloud-native applications.
---

# DevOps

Cloud infrastructure across Cloudflare, Docker, and Google Cloud Platform.

## Platform Selection

**Cloudflare** — Edge-first, ultra-low latency, zero egress (R2), serverless
**Docker** — Local dev consistency, microservices, Kubernetes
**Google Cloud** — Enterprise scale, data analytics, managed services

## Quick Start

```bash
# Cloudflare
npm install -g wrangler && wrangler init my-worker && wrangler deploy

# Docker
docker build -t myapp . && docker run -p 3000:3000 myapp

# Google Cloud
gcloud run deploy my-service --image gcr.io/project/image --region us-central1
```

## References

- `references/cloudflare-workers-basics.md` - Workers getting started
- `references/cloudflare-r2-storage.md` - R2 object storage
- `references/cloudflare-d1-kv.md` - D1 database, KV store
- `references/docker-basics.md` - Dockerfile, images, containers
- `references/docker-compose.md` - Multi-container apps
- `references/gcloud-platform.md` - GCP overview, gcloud CLI
- `references/gcloud-services.md` - Compute, GKE, Cloud Run
