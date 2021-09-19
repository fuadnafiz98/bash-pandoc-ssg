# Installing & Configuring postgresql

## Installing postgresql via postgresql apt repository

```bash
#!/bin/bash
sudo apt update && sudo apt upgrade
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt update
sudo apt install postgresql-13 postgresql-contrib
```

* Enable `postgresql` if it doesn't enabled already. 
`sudo systemctl start postgresql`

* Disable `postgresql` if it doesn't enabled already. 
`sudo systemctl stop postgresql`

* Restart `sudo systemctl restart postgresql`


## References 

1. [https://www.digitalocean.com/community/tutorials/how-to-install-postgresql-on-ubuntu-20-04-quickstart](https://www.digitalocean.com/community/tutorials/how-to-install-postgresql-on-ubuntu-20-04-quickstart)
1. [https://www.linode.com/docs/guides/how-to-install-use-postgresql-ubuntu-20-04/] (https://www.linode.com/docs/guides/how-to-install-use-postgresql-ubuntu-20-04/)
