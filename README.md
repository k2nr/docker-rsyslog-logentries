# Docker rsyslog for logentries

```
docker pull k2nr/rsyslog-logentries
```

Run rsyslog logentries

```
docker run -d --name="syslog" \
-p 514:514 \
-v /var/log:/var/log \
-e "LE_TOKEN=[Your Logentries Token]" \
-e "SYSLOG_HOSTNAME=HOST" \
k2nr/rsyslog-logentries
```

Logs of any containers with `--log-driver=syslog` will be forwarded to Logentries

```
docker run --log-driver=syslog --log-opt syslog-address=tcp://127.0.0.1:514 --log-opt syslog-tag=thisistag imagename
```
