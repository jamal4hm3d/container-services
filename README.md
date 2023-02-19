# Containers

This repo contains all the service in my home server to run as containers. this services use podman to start containers and systemd to start the containers at systemboot.

Create volumes and open ports beforehand to start and avoid errors for podman.

Use podman.sh as template for start containers and to genetare systemd file use

```sh
podman generate systemd --new --name CONTAINER_NAME -f
```

Move the files to

```
~/.config/systemd/user/
```

To enable and start the containers use this commands

```sh
systemctl --user daemon-reload
sudo systemctl enable SERVICE_NAME.service
```
