# Les Bonnes Pièces (Dockerized)

## Overview

This is a static frontend (Nginx) and a JSON API backend (`json-server`) served via Docker Compose.

### Services

- Frontend: Nginx serving `index.html`, JS, CSS, assets.
- API: `json-server` serving `db.json` on port `8081`.

## Run locally with Docker Compose

```bash
cd c:\\Users\\ioliveira\\Desktop\\javaProject
docker compose up --build
```

Then open:
- Frontend: `http://localhost:8080`
- API: `http://localhost:8081/pieces`

## Useful commands

- Rebuild and start in background:
  ```bash
docker compose up --build -d
```
- Stop:
  ```bash
docker compose down
```

## If images are missing

1. Clear localStorage from the browser DevTools Console:
   ```js
window.localStorage.removeItem('pieces')
```
2. Reload the page.

## Push to GitHub

1. Initialize Git (if needed):
   ```bash
git init
```
2. Add files:
   ```bash
git add .
```
3. Commit:
   ```bash
git commit -m "Dockerized frontend + json-server API"
```
4. Add remote and push (replace URL):
   ```bash
git remote add origin https://github.com/<your-user>/<your-repo>.git
git branch -M main
git push -u origin main
```
