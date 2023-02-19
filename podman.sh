podman run -d \
  --name=jellyfin \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Kolkata \
  -p 127.0.0.1:8096:8096 \
  -v /home/jamal/containers/jellyfin/config:/config:Z \
  -v /home/jamal/downloads:/data:Z \
  --restart unless-stopped \
  lscr.io/linuxserver/jellyfin:latest
