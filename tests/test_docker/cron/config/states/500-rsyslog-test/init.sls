{% set state_name = "cron-test" %}

{{ state_name }}-cron:
  file.managed:
    - name: /etc/cron.d/{{ state_name }}
    - source: salt://{{ tpldir }}/cron.conf
    - template: jinja
