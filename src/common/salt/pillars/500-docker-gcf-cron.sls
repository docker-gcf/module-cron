gcf:
  supervisor:
    programs:
      cron:
        extraConfig:
          command: cron -n -L 0 -f
