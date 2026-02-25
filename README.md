# nautilus-trader-base

Pre-built Docker base image with [TA-Lib](https://ta-lib.org/) and [NautilusTrader](https://nautilustrader.io/) Python dependencies.

## What's included

- Python 3.13 slim
- TA-Lib C library (compiled from source)
- NautilusTrader, pandas, numpy, TA-Lib Python wrapper, FastAPI, uvicorn, httpx

## Usage

```dockerfile
FROM ghcr.io/amustapha/nautilus-trader-base:1.223.0
```

## Versioning

Image tags match the pinned NautilusTrader version in `requirements.txt` (e.g. `1.223.0`). A `latest` tag is also published.

## Building locally

```bash
docker build -t nautilus-trader-base .
```

## CI

The image is automatically built and published to `ghcr.io/amustapha/nautilus-trader-base` on every push to `master` that changes `Dockerfile` or `requirements.txt`.
