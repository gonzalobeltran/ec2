cd ../simuc2

meteor build ../ec2  --architecture os.linux.x86_64

cd ../ec2

scp simuc2.tar.gz test:/home/ubuntu

rm simuc2.tar.gz

ssh test 'sh deploy-simuc'
