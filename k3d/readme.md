1. `source cluster-tools`
2. `create_cluster`: creates a 4 node, 1 control plane cluster
   > INFO[0000] Prep: Network  
   > INFO[0003] Created network 'k3d-cluster1'  
   > INFO[0003] Created volume 'k3d-cluster1-images'  
   > INFO[0003] Starting new tools node...  
   > INFO[0003] Starting Node 'k3d-cluster1-tools'  
   > INFO[0004] Creating node 'k3d-cluster1-server-0'  
   > INFO[0004] Creating node 'k3d-cluster1-agent-0'  
   > INFO[0004] Creating node 'k3d-cluster1-agent-1'  
   > INFO[0004] Creating node 'k3d-cluster1-agent-2'  
   > INFO[0005] Creating node 'k3d-cluster1-agent-3'  
   > INFO[0005] Creating LoadBalancer 'k3d-cluster1-serverlb'
   > INFO[0005] Using the k3d-tools node to gather environment information
   > INFO[0007] Starting cluster 'cluster1'  
   > INFO[0007] Starting servers...  
   > INFO[0007] Starting Node 'k3d-cluster1-server-0'  
   > INFO[0007] Deleted k3d-cluster1-tools  
   > INFO[0021] Starting agents...  
   > INFO[0022] Starting Node 'k3d-cluster1-agent-3'  
   > INFO[0022] Starting Node 'k3d-cluster1-agent-0'  
   > INFO[0022] Starting Node 'k3d-cluster1-agent-2'  
   > INFO[0022] Starting Node 'k3d-cluster1-agent-1'  
   > INFO[0045] Starting helpers...  
   > INFO[0045] Starting Node 'k3d-cluster1-serverlb'  
   > INFO[0054] Injecting record for host.k3d.internal into CoreDNS configmap...
   > INFO[0054] Injecting '192.168.65.2 host.k3d.internal' into /etc/hosts of all nodes...
   > INFO[0121] Cluster 'cluster1' created successfully!  
   > INFO[0122] You can now use it like this:  
   > kubectl cluster-info
3. `destroy_cluster`
   > INFO[0000] Deleting cluster 'cluster1'  
   > INFO[0001] Deleted k3d-cluster1-serverlb  
   > INFO[0003] Deleted k3d-cluster1-agent-3  
   > INFO[0003] Deleted k3d-cluster1-agent-2  
   > INFO[0004] Deleted k3d-cluster1-agent-1  
   > INFO[0004] Deleted k3d-cluster1-agent-0  
   > INFO[0005] Deleted k3d-cluster1-server-0  
   > INFO[0005] Deleting cluster network 'k3d-cluster1'  
   > INFO[0008] Deleting image volume 'k3d-cluster1-images'  
   > INFO[0008] Removing cluster details from default kubeconfig...
   > INFO[0008] Removing standalone kubeconfig file (if there is one)...
   > INFO[0008] Successfully deleted cluster cluster1!
