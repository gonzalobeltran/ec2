cd ../simuc2

meteor build ../ec2  --architecture os.linux.x86_64

cd ../ec2

scp simuc2.tar.gz simuc2:/home/ubuntu

rm simuc2.tar.gz

ssh simuc2 'sh deploy-simuc'
