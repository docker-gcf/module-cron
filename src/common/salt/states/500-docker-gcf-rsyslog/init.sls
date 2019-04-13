{% set state_name = "docker-gcf-cron" %}

{{ state_name }}-supervisor:
  file.managed:
    - name: /etc/supervisor/conf.d/{{ state_name }}.conf
    - source: salt://{{ tpldir }}/supervisor.conf
    - template: jinja
