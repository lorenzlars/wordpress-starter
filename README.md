# WordPress starter template

This is a WordPress starter template build with Docker to quickly spin up a development environment.

## Quick start

Just run `docker compose up`. This will start up the stack, mount the src directory into `wp-content`
of WordPress. WordPress will be reachable on port `3000` and the login user is `admin` with the
password `admin`. This can be changed by editing the values in `.env`.

> [!IMPORTANT]  
> After stopping the containers you need to run `docker compose down --volumes` to clean everything
up. Don't skip this step!

For a more detailed description look at: https://larslorenz.dev/blog/wordpress-starter-template