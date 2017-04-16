## configmap
Ref: https://github.com/dshulyak/kubernetes.github.io/blob/d58ba7b075bb4848349a2c920caaa08ff3773d70/docs/user-guide/configmap/mount-file-pod.yaml

## Diff w/ https to no https
https://github.com/xfcio/auth.cloud.xfc.io/commit/4588e6f6818ad4f95e0c819db8d285a74175d212  


```sh
oc create configmap sa --from-file=standalone.xml
oc create configmap sha --from-file=standalone-ha.xml
```
```yaml
      volumes:
        - name: cv1
          configMap:
            name: sa
            items:
            - key: standalone.xml
              path: standalone.xml


        volumeMounts:
        - name: cv1
          mountPath: /opt/jboss/keycloak/standalone/configuration/standalone.xml
          subPath: standalone.xml
```          
