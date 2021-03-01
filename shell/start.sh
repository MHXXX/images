#!/bin/sh
### BEGIN INIT INFO
# Provides: VVAS-DataCenter-Process
# Required-Start: $local_fs $remote_fs $network $syslog
# Required-Stop: $local_fs $remote_fs $network $syslog
# Default-Start: 2 3 4 5
# Default-Stop: 0 1 6
# Short-Description: start and stop process
# Description: This file should be used to construct scripts to be placed in /etc/init.d.
### END INIT INFO
RESOURCE_NAME=$(pwd)/XXXXX.jar
JAVA=/jre/bin/java
nohup $JAVA -server -XX:+UseG1GC -XX:+OmitStackTraceInFastThrow -Duser.timezone=GMT+8 -Dfile.encoding=UTF-8 -Xms128M -Xmx1G -jar $RESOURCE_NAME --server.port=8080 --spring.profiles.active=pro > /dev/null &
echo Success!
