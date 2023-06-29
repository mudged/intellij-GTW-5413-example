#!/bin/bash

echo "Container started"

# Start the dockerd process
echo "Starting the dockerd process..."
/usr/local/share/docker-init.sh

# check that the dockerd process is now running as root
if [[ ! $(ps --User root | grep "dockerd") ]]; then
  echo "The dockerd process is not running. Ensure you are running this container with the --privileged flag. Exiting"
  exit 1
fi

exec "$@"
