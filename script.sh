#! /usr/bin/bash
PATH=/home/tresure/yandex-cloud/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
if [ $(yc compute instance get $HAPROXY_SERVER_NAME | grep status | cut -d: -f2) = "RUNNING" ]
then
        echo "$HAPROXY_SERVER_NAME running on yandex-cloud"
else
        yc compute instance start $HAPROXY_SERVER_NAME --async > /dev/null
fi

