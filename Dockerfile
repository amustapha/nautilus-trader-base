FROM python:3.11-slim

# TA-Lib C library (compiled from source) + Python trading dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    wget build-essential autoconf \
    && wget -q https://downloads.sourceforge.net/project/ta-lib/ta-lib/0.4.0/ta-lib-0.4.0-src.tar.gz \
    && tar -xzf ta-lib-0.4.0-src.tar.gz \
    && cd ta-lib \
    && cp /usr/share/autoconf/build-aux/config.guess . \
    && cp /usr/share/autoconf/build-aux/config.sub . \
    && ./configure --prefix=/usr && make && make install && cd .. \
    && rm -rf ta-lib ta-lib-0.4.0-src.tar.gz \
    && apt-get purge -y build-essential wget autoconf \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
