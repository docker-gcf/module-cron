{% set state_name = "docker-gcf-cron" %}

{{ state_name }}-pid-file:
  file.absent:
    - name: /var/run/crond.pid
