## configmap
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
