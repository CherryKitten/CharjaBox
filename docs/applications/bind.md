# BIND

[BIND](https://www.isc.org/bind/) - Domain Name Server for your home network

Please note that BIND requires some additional setup after installing. For reference you can use the second half of [this tutorial](http://www.damagehead.com/blog/2015/04/28/deploying-a-dns-server-using-docker/) and the [BIND documentation](https://kb.isc.org/docs/aa-01031).

The docker container used for BIND comes with an instance of [Webmin](http://www.webmin.com/) to make management of your DNS easier. You can disable this by setting `bind_webmin_enabled` to `"false"`.

BIND has to run on port `53` for DNS to work. The Webinterface port can be set by changing `bind_webmin_port`.