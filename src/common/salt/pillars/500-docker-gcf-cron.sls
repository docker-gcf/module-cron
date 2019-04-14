gcf:
  supervisor:
    programs:
      cron:
        extraConfig:
          command: cron -n -L 4 -f
