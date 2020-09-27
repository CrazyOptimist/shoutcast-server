# Shoutcast Service Deployment Using Docker Compose

## HOW TO

Let's keep it dead simple.  
```bash
docker-compose build
docker-compose up -d
```
Use the nginx.conf file to exchange your http block and to add the stream block in `/etc/nginx/nginx.conf`.
```bash
vim /etc/nginx/nginx.conf
# exchange your http block and add the stream block
```
Admin username and password can be found in sc_serv.conf and be modified.  
Happy streaming!

## LICENSE

MIT
