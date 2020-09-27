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

## LICENSE

MIT

## GOOD TO KNOW
Admin username for web admin panel access: `admin`  
Admin password can be found(adminpassword) in `sc_serv.conf` and be modified.  
Stream password can be found(password) in `sc_serv.conf` and be modified.  
Happy streaming!  
