# Kubernetes-Deployment

## Creating a Deployment

Use the `kubectl create` command along with the `-f` or `--filename` switch. The --save-config store's current properties in resource's annotations. 

```bash
kubectl create -f deploymentFile.yml --save-config 

```

## Creating or Applying Changes

Use the `kubectl apply` command along with the `-f` or `--filename` switch. kubectl apply will create the resource based on the given YAML file and if the resource will already exists, it will apply the changes again based on YAML. 

```bash
kubectl apply -f deploymentFile.yml 

```

## Scaling Pods Horizontally

Update the YAML file (Declarative Approach) or use the `kubectl scale` command (Imperative Approach). The `--replicas=5` will scale the deployment pods to 5. Keep in mind, below given both commands are imperative in nature.

```bash
kubectl scale deployment DEPLOYMENT-NAME --replicas=5
```

**OR**

```bash
kubectl scale -f deploymentFILE.yml --replicas=5
```
