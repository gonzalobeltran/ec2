ssh $args '
sudo apt update

sudo apt install -y mongodb
sudo systemctl start mongod
sudo systemctl enable mongod

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential

sudo apt-get install -y python

sudo npm install pm2 -g

sudo pm2 startup ubuntu
sudo chown -R $USER:$(id -gn $USER) /home/ubuntu/.config
sudo iptables -t nat -I PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 3000
'
