FROM odoo:16.0

# Install additional dependencies if needed
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

# Copy custom configuration
COPY ./odoo.conf /etc/odoo/