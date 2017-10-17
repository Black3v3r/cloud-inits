# cloud-inits
cloud-init files to start servers fast and easily

==================================

## Basic Debian starter
```sh
#!/bin/sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Black3v3r/cloud-inits/master/debian-dply.sh)"
```

## Docker VPN
```sh
#!/bin/sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Black3v3r/cloud-inits/master/docker-vpn.sh)"
```
### Show generated credentials
```sh
docker logs ipsec-vpn-server
docker exec -it ipsec-vpn-server ipsec status
```