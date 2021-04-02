# Rolling Updates in Kubernetes

## Creating Deployment

Use the `kubectl create` command along with the --filename or -f switch. The `--record` is going to record the command in the deployment revision history.  

```bash
kubectl create -f deploymentFile.yml --save-config --record
```

**OR**

```bash
kubectl apply -f deploymentFile.yml --record
```

## Checking the Deployment Status

The `kubectl rollout status` command can be used to get information about a specific Deployment. 

```bash
kubectl rollout status deployment DEPLOYMENT-NAME
```

## Checking Deployment History

The `kubectl rollout history` is used to view the history of a Deployment. The `--revision` switch is used to jump to a particular revision in history.

```bash
kubectl rollout history deployment DEPLOYMENT-NAME
```

**OR**

```bash
kubectl rollout history deployment DEPLOYMENT-NAME --revision=REVISION-NUMBER
```

We can also check `rollout history` using YAML file which is used to create the deployment.

```bash
kubectl rollout history -f deploymentFile.yml
```

**OR**

```bash
kubectl rollout history --filename deploymentFile.yml --revision=REVISION-NUMBER
```

## Rolling Back a Deployment

Use the `kubectl rollout undo` command to rollback to previous or a specific Deployment revision. To jump back to a specific revision,`--to-revision` is used.

```bash
kubectl rollout undo -f deploymentFile.yml 
```

**OR**

```bash
kubectl rollout undo deployment DEPLOYMENT-NAME --to-revision=REVISION-NUMBER
```


```python

```
