#!/bin/bash

ENDPOINT_NAME=$1
MODEL_NAME=$2
MODEL_VERSION=$3
DBRICK_HOST_NAME=$4
DBRICK_TOKEN=$5

databricks configure --token --host $DBRICK_HOST_NAME <<< $DBRICK_TOKEN


databricks serving-endpoints create \
    --json "{\"name\":\"$ENDPOINT_NAME\",\"config\":{\"served_models\":[{\"model_name\":\"$MODEL_NAME\",\"model_version\":\"$MODEL_VERSION\",\"workload_size\":\"Small\",\"scale_to_zero_enabled\":true}]}}" \
    --no-wait