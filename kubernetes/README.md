```
1. sudo chown 777 deploy.sh
2. ./deploy.sh
```
Notes 
```
You can use **local-path-storage.yaml** instead of cloud provided storage class
just you need to run **local-path-storage.yaml** it will create storage class with name **manual** then you can add storage class name in **postgres-storage.yaml**
```
