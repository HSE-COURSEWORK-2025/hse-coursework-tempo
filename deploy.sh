# 1) Устанавливаем Tempo в namespace hse-coursework-health (создаём его, если нужно)
helm upgrade --install tempo grafana/tempo \
  --namespace hse-coursework-health  || true

# 2) Устанавливаем Grafana с вашим values в тот же namespace
helm upgrade --install grafana grafana/grafana \
  -f single-binary-grafana-values.yaml \
  --namespace hse-coursework-health || true

# 3) Применяем дополнительные манифесты (single-binary-extras.yaml) в том же namespace
kubectl apply -f single-binary-extras.yaml \
  --namespace hse-coursework-health || true
