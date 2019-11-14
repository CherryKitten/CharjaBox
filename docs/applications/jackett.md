# Jackett
[Jackett](https://github.com/Jackett/Jackett) - API Support for your favorite torrent trackers. 

Jackett works as a proxy server: it translates queries from apps (Sonarr, Radarr, SickRage, CouchPotato, Mylar, Lidarr, DuckieTV, qBittorrent, Nefarious etc) into tracker-site-specific http queries, parses the html response, then sends results back to the requesting software. This allows for getting recent uploads (like RSS) and performing searches. Jackett is a single repository of maintained indexer scraping & translation logic - removing the burden from other apps.

For information on running Jackett behind a reverse proxy, see [here](https://github.com/Jackett/Jackett#running-jackett-behind-a-reverse-proxy).