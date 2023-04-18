Microk8s Examples on GPU on Demand

For your convenience we have provided two sample yaml files which
will each start an instance of the Nvidia NGC containers and run them
as kubernetes pods. 

Example: Start a tensorflow pod:

    kubectl apply -f tensorflow.yaml

    # monitor the status of the pod
    kubectl get pods

    # attach to a shell in the pod
    kubectl exec -ti tensorflow -- /bin/bash

    # delete the pod
    kubectl delete pod tensorflow

NOTE: The command kubectl is aliased to `microk8s kubectl` for your convenience.

