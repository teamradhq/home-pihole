
# Home Pi Hole
This provides a docker compose stack to deliver a Pi Hole service on a local network. 

- Provides the required services for a `pihole` installation.
- Exposes `pihole` configuration and state for easy backup and restoration.
- Provides utility scripts for interacting with the `pihole` service, specifically providing functionality that isn't available through the web or CLI interfaces.


## Quick Start 

Copy `.env.example` to `.env` and update the values as needed. 

```bash
cp -n .env.example .env
```

Start the stack with `docker-compose`.

```bash
docker-compose up -d
```

Visit the `pihole` web interface at `http://localhost:{PIHOLE_HTTP_PORT}/admin` and configure as needed.