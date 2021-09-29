# Qbittorrent with File Server

The [LinuxServer.io](https://linuxserver.io/) team provides a [Qbittorrent image](https://github.com/linuxserver/docker-qbittorrent) that allows the Qbittorrent client WebUI to be served. However, it doesn't come with a file server, so if hosted remotely, there's no way to retrieve the downloaded files. The image provided here adds a simple HTTP file server to that image.

## Usage
Please refer to the [Usage](https://github.com/linuxserver/docker-qbittorrent#usage) section of the original [Qbittorrent image](https://github.com/linuxserver/docker-qbittorrent). The only difference is that this image is at `ghcr.io/spacepotahto/qbittorrent:<VERSION>`, and port 5000 should also be exposed to allow access of the file server at `<your-ip>:5000`.