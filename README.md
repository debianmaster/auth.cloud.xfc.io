## configmap
Ref: https://github.com/dshulyak/kubernetes.github.io/blob/d58ba7b075bb4848349a2c920caaa08ff3773d70/docs/user-guide/configmap/mount-file-pod.yaml

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
          mountPath: /opt/jboss/keycloak/standalone/configuration
          subPath: standalone.xml
```          
