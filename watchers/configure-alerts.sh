#!/bin.sh

# Replace <usernmae> and <password>with your own credentials

# if cpu usage goes above 50%
sudo curl --user <username>:<password> -XPUT -H 'Content-Type:application/json' -H 'Accept: application/json' --data-binary @cpu-watch.json http://localhost:9200/_xpack/watcher/watch/cpu_elk-117

# if memory usage goes above 50%
sudo curl --user <username>:<password> -XPUT -H 'Content-Type:application/json' -H 'Accept: application/json' --data-binary @memory-watch.json http://localhost:9200/_xpack/watcher/watch/memory_elk-117

# if disk usage goes above 50%
sudo curl --user <username>:<password> -XPUT -H 'Content-Type:application/json' -H 'Accept: application/json' --data-binary @filesystem-watch.json http://localhost:9200/_xpack/watcher/watch/filesystem_elk-117

