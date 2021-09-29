FROM ghcr.io/linuxserver/qbittorrent

# Set up file server
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - 
RUN apt-get install -y nodejs
RUN npm install -g serve

# Serve /downloads directory
WORKDIR /downloads
EXPOSE 5000
CMD ["serve", "-l", "5000"]