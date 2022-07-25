#!/bin/bash
@echo
@echo "Start K3s cluster locally."
docker-compose -f docker-compose-deploy.yaml up -d
export KUBECONFIG=/etc/kubernetes/kubelet.conf
sudo kubectl --kubeconfig=./kubeconfig.yaml run cogentlabs-thumbnail-generator-api -it --rm --image=ghcr.io/nahidsaikat/cogentlabs-thumbnail-generator-api:latest --insecure-skip-tls-verify
