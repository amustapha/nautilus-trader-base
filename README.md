# nautilus-trader-base

Pre-built Docker base image with [TA-Lib](https://ta-lib.org/) and [NautilusTrader](https://nautilustrader.io/) Python dependencies.

## What's included

- Python 3.11 slim
- TA-Lib C library (compiled from source)
- NautilusTrader, pandas, numpy, TA-Lib Python wrapper, FastAPI, uvicorn, httpx

## Usage

```dockerfile
FROM ghcr.io/amustapha/nautilus-trader-base:latest

COPY . .
# your application setup here
```

## Building locally

```bash
docker build -t nautilus-trader-base .
```

## CI

The image is automatically built and published to `ghcr.io/amustapha/nautilus-trader-base:latest` on every push to `master` that changes `Dockerfile` or `requirements.txt`.
