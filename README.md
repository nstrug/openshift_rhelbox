# openshift_rhelbox
Dumb RHEL box with a keepalive


To build:
```
oc adm policy add-scc-to-user anyuid <user>
 1027  oc new-project egress-testing
 1028  oc new-build https://github.com/nstrug/openshift_rhelbox.git
```

To deploy:
```
oc new-app openshiftrhelbox
```


