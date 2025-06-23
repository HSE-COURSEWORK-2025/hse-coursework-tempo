# HSE Coursework: Tempo

Этот репозиторий содержит манифесты и скрипты для деплоя Tempo и Grafana в Kubernetes-кластере.

## Структура
- `single-binary-grafana-values.yaml` — values-файл для настройки Grafana и подключения к Tempo
- `single-binary-extras.yaml` — дополнительные манифесты (Ingress, тестовый deployment)
- `deploy.sh` — автоматический деплой Tempo и Grafana
- `stop.sh` — удаление всех ресурсов Tempo и Grafana из кластера

## Быстрый старт
1. Запустите деплой:
   ```bash
   ./deploy.sh
   ```
2. Для удаления:
   ```bash
   ./stop.sh
   ```
