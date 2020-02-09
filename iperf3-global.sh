#!/bin/bash
oc new-project iperf3
oc create -f iperf-client/pod-deployment-antiafinity.yaml
# git clone https://github.com/
oc create -f iperfcon/iperf3-server/pod-deployment.yaml
oc create -f iperfcon/iperf3-server/service.yaml
oc create -f iperfcon/iperf3-client/pod-deployment.yaml
oc create -f iperfcon/iperf3-client/service.yaml
oc create -f iperfcon/iperf3-client/route.yaml
oc get pods -n iperf -o wide
oc delete project iperf3

