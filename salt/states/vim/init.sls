vim:
  pkg.installed

/etc/vim/vimrc.local:
  file.managed:
    - makedirs: True
    - source: salt://vim/conf/vimrc.local
    - require:
      - pkg: vim
