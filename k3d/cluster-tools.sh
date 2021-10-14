#!/usr/bin/env bash
CLUSTER_NAME=cluster1
function create_cluster {
  k3d cluster create $CLUSTER_NAME \
    --agents 4 \
    --servers 1 \
    --kubeconfig-switch-context \
    --kubeconfig-update-default=true

      ###################
    ### Look into later ###
      ###################

    # -p, --port [HOST:][HOSTPORT:]CONTAINERPORT[/PROTOCOL][@NODEFILTER]   
    # Map ports from the node containers (via the serverlb) to the host (Format: [HOST:][HOSTPORT:]CONTAINERPORT[/PROTOCOL][@NODEFILTER])
    # - Example: `k3d cluster create --agents 2 -p 8080:80@agent:0 -p 8081@agent:1`
    # --lb-config-override strings                                     Use dotted YAML path syntax to override nginx loadbalancer settings
    # --registry-config string                                         Specify path to an extra registries.yaml file
    # --registry-create NAME[:HOST][:HOSTPORT]                         Create a k3d-managed registry and connect it to the cluster (Format: NAME[:HOST][:HOSTPORT]
    #                                                                   - Example: `k3d cluster create --registry-create mycluster-registry:0.0.0.0:5432`
    # --registry-use stringArray                                       Connect to one or more k3d-managed registries running locally
    # --runtime-label KEY[=VALUE][@NODEFILTER[;NODEFILTER...]]         Add label to container runtime (Format: KEY[=VALUE][@NODEFILTER[;NODEFILTER...]]
    # --volume [SOURCE:]DEST[@NODEFILTER[;NODEFILTER...]]
    # Example: `k3d cluster create --agents 2 -v /my/path@agent:0,1 -v /tmp/test:/tmp/other@server:0`
    # --subnet 172.28.0.0/16
    # --env KEY[=VALUE][@NODEFILTER[;NODEFILTER...]]
    # --k3s-arg ARG@NODEFILTER[;@NODEFILTER]
    # --k3s-node-label KEY[=VALUE][@NODEFILTER[;NODEFILTER...]]
}

function destroy_cluster {
  k3d cluster delete $CLUSTER_NAME
}