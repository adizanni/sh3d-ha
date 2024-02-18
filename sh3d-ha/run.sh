#!/bin/sh

export HOMES_LOCATION=/share/sh3d-ha/$(jq -r '.model_folder' /data/options.json)
export EXPORT_LOCATION=/homeassistant/www/sh3d-ha/$(jq -r '.export_to_HA_folder' /data/options.json)

mkdir -p $HOMES_LOCATION
mkdir -p $EXPORT_LOCATION

catalina.sh run
