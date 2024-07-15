
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


## Moving Away from Debian Based PiHole Container

One thing that's bugging me is that the official `pihole` container has a some issues for me: 

- It's rather large to me. As far as I can tell, `pihole` is actually a software install and configure script, accompanied by a CLI web interfaces for interacting with the installed software.
- It uses PHP 7.4 which is no longer supported. 

I'd really like to run `pihole` in an Alpine container as this makes more sense to me. I've found a repository that contains this Dockerfile:

https://github.com/SamTV12345/alpine-pihole/blob/main/Dockerfile

It's a bit out of date, and it would also be nice to extract the `pihole` Alpine installer script so it can be given back to the project once it's working: 

- Goal 1: Create an Alpine installer for `pihole` that delivers the same configuration as the existing installer script.
- Goal 2: Provide an alternative Alpine installer for `pihole` that uses PHP 8.x and Nginx.  

