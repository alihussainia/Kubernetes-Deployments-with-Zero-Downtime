# Deploying Canary Deployments

## Creating Deployments

As we have already studied in the previous tasks. The only difference here is of folder which refers to the point that it is not necessary that you deploy a deployment one by one using filenames, we can deploy a whole directory by specifying the directory-name. 

```bash
kubectl create -f folder-name --save-config --record
```

## Curling the the IP with SVC PORT

Let's check the output of the IP hitting the service port.

```shell
sh curl.sh
```
