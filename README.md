# WireGuard Docker Compose Setup

This repository contains the necessary configurations for running a WireGuard container using Docker Compose.

## Prerequisites
- Docker and Docker Compose installed on your system.
- Knowledge about WireGuard and its configuration.

## Configuration

The `docker-compose.yml` file defines the WireGuard service along with its necessary settings, such as ports, volumes, and environment variables. Before you run the service, make sure you have set the appropriate environment variables.

### Environment Variables:

```plaintext
- CONTAINERNAME: Container name.
- PUID & PGID: User and group IDs.
- TZ: Timezone.
- SERVERURL: The server's URL.
- SERVERPORT: Server port.
- PEERS: Define the peers.
- PEERDNS: DNS for peers.
- ALLOWEDIPS: Allowed IP addresses.
- LOG_CONFS: Logging configurations.
```

Make sure you set these variables before you run the service. You can either export them in your shell or use an `.env` file.

## Usage

A `Makefile` has been provided for easier management of the Docker Compose commands:

### Start the containers:

```bash
make up
```

### Stop and remove the containers:
```bash
make down
```

### Restart the containers:
```bash
make restart
```

### Recreate and start the containers:
```bash
make recreate
```

## Networks

The WireGuard service runs on its own Docker network named `wireguard`.

## Notes

- The WireGuard container uses the image from `linuxserver/wireguard` and listens on port `51820` by default.
- Ensure that the `NET_ADMIN` and `SYS_MODULE` capabilities are provided to the container, as they are necessary for WireGuard to function correctly.

## Conclusion

This setup allows you to easily manage and run a WireGuard container using Docker Compose. Make sure to refer to the official WireGuard documentation for more in-depth information and configurations.

**Happy tunneling!**
