#!/bin/bash
# Скрипт для удаления всех установленных компонентов из namespace hse-coursework-health
set -e

NAMESPACE="hse-coursework-health"

# 1) Удаляем Helm-релиз Tempo
echo "Удаляем Helm-релиз tempo в namespace $NAMESPACE..."
helm uninstall tempo --namespace "$NAMESPACE" || true

# 2) Удаляем Helm-релиз Grafana
echo "Удаляем Helm-релиз grafana в namespace $NAMESPACE..."
helm uninstall grafana --namespace "$NAMESPACE" || true

# 3) Удаляем дополнительные манифесты
echo "Удаляем ресурсы из single-binary-extras.yaml в namespace $NAMESPACE..."
kubectl delete -f single-binary-extras.yaml --namespace "$NAMESPACE" || true

# (Опционально) Удалить namespace целиком
# echo "Удаляем namespace $NAMESPACE..."
# kubectl delete namespace "$NAMESPACE" || true

echo "Все компоненты остановлены и удалены из namespace $NAMESPACE."
