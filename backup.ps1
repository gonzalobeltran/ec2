ssh simuc2 'mongodump'

scp -r simuc2:/home/ubuntu/dump/simuc2 .

ssh simuc2 'rm -r dump'

mv simuc2 ../db

cd ../db

$fecha = get-date -uformat "%Y-%m-%d"
ren simuc2 $fecha
