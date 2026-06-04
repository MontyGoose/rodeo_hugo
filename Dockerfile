# Multi-stage build for Hugo site with Caddy

# Stage 1: Build the Hugo site
FROM hugomods/hugo:ext-0.152.1 AS builder

# Set working directory
WORKDIR /site

# Copy the entire site content
COPY . .

# Build the Hugo site
# Use the RAILWAY_PUBLIC_DOMAIN environment variable if available, otherwise use a default
RUN hugo --baseURL=${RAILWAY_PUBLIC_DOMAIN:-https://localhost}

# Stage 2: Serve with Caddy
FROM caddy:latest

# Copy the built site from the builder stage to Caddy's static files directory
COPY --from=builder /site/public /srv

# Caddy will automatically serve the /srv directory
# The Caddyfile can be customized if needed