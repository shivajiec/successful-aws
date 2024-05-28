set -e

#stop running container if any#
#!/bin/bash
ids=$(docker ps -aq)
for id in $ids
do
    echo "$id"
    docker stop $id && docker rm $id
done