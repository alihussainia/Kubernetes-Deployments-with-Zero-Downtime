VAR=$(kubectl get svc nginx-service | grep -i ":[0-9]*[^/]" | cut -d " " -f15 | cut -b 4-8)
   curl -s "http://localhost:$VAR" | grep "<title>.*</title>"
