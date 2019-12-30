# General
[Lancache](https://github.com/lancachenet/monolithic) - Cache your video game downloads and operating system updates so you only have to download them once

If you do not run your own DNS server, you can set `lancache_dns_enabled` to `true` and use the integrated DNS server.

You can also use the variables `lancache_limits_memory`, `lancache_limits_size`, `lancache_limits_age` to set the caches memory use, maximum disk space use and maximum age for cached files respectively.

If you run your own DNS server, you can get all the domains for the supported CDNs from [here](https://github.com/uklans/cache-domains). Redirect those to your CharjaBox IP (and set up a reverse proxy for those domains if not using port 80).

# Configuration

A simple example setup using BIND and Nginx with the Cache running on `192.168.1.22` on port `6666` could look like this:

BIND db.rpz:
```
TTL 60
@            IN    SOA  localhost. root.localhost.  (
                          2015112501   ; serial
                          1h           ; refresh
                          30m          ; retry
                          1w           ; expiry
                          30m)         ; minimum
                   IN     NS    localhost.

localhost       A   127.0.0.1

*.content.steampowered.com    A        192.168.1.22
content1.steampowered.com    A        192.168.1.22
content2.steampowered.com    A        192.168.1.22
content3.steampowered.com    A        192.168.1.22
content4.steampowered.com    A        192.168.1.22
content5.steampowered.com    A        192.168.1.22
content6.steampowered.com    A        192.168.1.22
content7.steampowered.com    A        192.168.1.22
content8.steampowered.com    A        192.168.1.22
cs.steampowered.com    A        192.168.1.22
steamcontent.com    A        192.168.1.22
client-download.steampowered.com    A        192.168.1.22
*.hsar.steampowered.com.edgesuite.net    A        192.168.1.22
*.akamai.steamstatic.com    A        192.168.1.22
content-origin.steampowered.com    A        192.168.1.22
clientconfig.akamai.steamtransparent.com    A        192.168.1.22
steampipe.akamaized.net    A        192.168.1.22
edgecast.steamstatic.com    A        192.168.1.22
steam.apac.qtlglb.com.mwcloudcdn.com    A        192.168.1.22
*.cs.steampowered.com    A        192.168.1.22
*.cm.steampowered.com    A        192.168.1.22
*.edgecast.steamstatic.com    A        192.168.1.22
*.steamcontent.com    A        192.168.1.22
cdn1-sea1.valve.net    A        192.168.1.22
cdn2-sea1.valve.net    A        192.168.1.22
*.steam-content-dnld-1.apac-1-cdn.cqloud.com    A        192.168.1.22
*.steam-content-dnld-1.eu-c1-cdn.cqloud.com    A        192.168.1.22
steam.apac.qtlglb.com    A        192.168.1.22
edge.steam-dns.top.comcast.net    A        192.168.1.22
edge.steam-dns-2.top.comcast.net    A        192.168.1.22
steam.naeu.qtlglb.com    A        192.168.1.22
steampipe-kr.akamaized.net    A        192.168.1.22
steam.ix.asn.au    A        192.168.1.22
steam.eca.qtlglb.com     A        192.168.1.22
steam.cdn.on.net    A        192.168.1.22
update5.dota2.wmsj.cn    A        192.168.1.22
update2.dota2.wmsj.cn    A        192.168.1.22
update6.dota2.wmsj.cn    A        192.168.1.22
update3.dota2.wmsj.cn    A        192.168.1.22
update1.dota2.wmsj.cn    A        192.168.1.22
update4.dota2.wmsj.cn    A        192.168.1.22
update5.csgo.wmsj.cn    A        192.168.1.22
update2.csgo.wmsj.cn    A        192.168.1.22
update4.csgo.wmsj.cn    A        192.168.1.22
update3.csgo.wmsj.cn    A        192.168.1.22
update6.csgo.wmsj.cn    A        192.168.1.22
update1.csgo.wmsj.cn    A        192.168.1.22
st.dl.bscstorage.net    A        192.168.1.22
cdn.mileweb.cs.steampowered.com.8686c.com    A        192.168.1.22
```
Nginx site config:
```
server {
        listen 80;
        listen 443;

        server_name *.content.steampowered.com content1.steampowered.com content2.steampowered.com content3.steampowered.com content4.steampowered.com content5.steampowered.com content6.steampowered.com content7.steampowered.com content8.steampowered.com cs.steampowered.com steamcontent.com client-download.steampowered.com *.hsar.steampowered.com.edgesuite.net *.akamai.steamstatic.com content-origin.steampowered.com clientconfig.akamai.steamtransparent.com steampipe.akamaized.net edgecast.steamstatic.com steam.apac.qtlglb.com.mwcloudcdn.com *.cs.steampowered.com *.cm.steampowered.com *.edgecast.steamstatic.com *.steamcontent.com cdn1-sea1.valve.net cdn2-sea1.valve.net *.steam-content-dnld-1.apac-1-cdn.cqloud.com *.steam-content-dnld-1.eu-c1-cdn.cqloud.com steam.apac.qtlglb.com edge.steam-dns.top.comcast.net edge.steam-dns-2.top.comcast.net steam.naeu.qtlglb.com steampipe-kr.akamaized.net steam.ix.asn.au steam.eca.qtlglb.com  steam.cdn.on.net update5.dota2.wmsj.cn update2.dota2.wmsj.cn update6.dota2.wmsj.cn update3.dota2.wmsj.cn update1.dota2.wmsj.cn update4.dota2.wmsj.cn update5.csgo.wmsj.cn update2.csgo.wmsj.cn update4.csgo.wmsj.cn update3.csgo.wmsj.cn update6.csgo.wmsj.cn update1.csgo.wmsj.cn st.dl.bscstorage.net cdn.mileweb.cs.steampowered.com.8686c.com;

        location / {
                include proxy_params;
                proxy_pass http://192.168.1.22:6666;
        }
}
```

# Variables

| Variable                    | Type    | Default                             | Comment                                                                     |
|-----------------------------|---------|-------------------------------------|-----------------------------------------------------------------------------|
| lancache_enabled            | Boolean | false                               | Enable/Disable the application                                              |
| lancache_tag                | String  | "latest"                            | Tag to use for the docker image                                             |
| lancache_dns_enabled        | Boolean | false                               | Enable/Disable integrated DNS server                                        |
| lancache_directories.config | String  | "{{ docker_home }}/lancache/config" | Path were application config should be stored                               |
| lancache_directories.data   | String  | "{{ docker_home }}/lancache/data"   | Path were application data should be stored, This includes all cached files |
| lancache_limits_memory      | String  | "500m"                              | Limit for memory usage for the caching process                              |
| lancache_limits_size        | String  | "1000000m"                          | Limit for total size of cached files                                        |
| lancache_limits_age         | String  | "3560d"                             | Time after which to delete old files                                        |
| lancache_port               | Int     | 6666                                | Port used to access the application                                         |
