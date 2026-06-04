# Build the static site with the official, pinned Hugo image.
FROM ghcr.io/gohugoio/hugo:v0.152.1 AS builder

WORKDIR /site
COPY . .
RUN hugo --gc --minify --noBuildLock

# Serve the generated files from a small, stable Caddy image.
FROM caddy:2-alpine

COPY --from=builder /site/public /srv
COPY Caddyfile /etc/caddy/Caddyfile
