for ((i=1;i<=20;i++)); 
do
    curl -s "http://localhost:[Port-Number]" | grep "<title>.*</title>"
    sleep .5s
done
