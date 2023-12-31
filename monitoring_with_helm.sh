#!/bin/bash

kubectl create namespace monitoring
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
helm uninstall prometheus prometheus-community/prometheus -n monitoring
helm uninstall grafana grafana/grafana -n monitoring

