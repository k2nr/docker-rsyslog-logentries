#!/bin/sh

cat /etc/rsyslog.d/logentries.conf.erb | erb > /etc/rsyslog.d/logentries.conf
exec rsyslogd $@
