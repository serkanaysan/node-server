curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
sudo apt-get install nodejs
sudo apt-get install build-essential
sh nodesource_setup.sh
apt-get install nodejs
sudo npm install -g pm2
cd /home/ubuntu/git/node-server
pm2 start hello.js
pm2 startup systemd
sudo su -c "env PATH=$PATH:/usr/bin pm2 startup systemd -u ubuntu --hp /home/ubuntu"
systemctl status pm2
pm2 list
#install nginx
sudo apt-get install nginx
cp -i ./nginx/sites-available/default /etc/nginx/sites-available/default -y
nginx -t
systemctl restart nginx
