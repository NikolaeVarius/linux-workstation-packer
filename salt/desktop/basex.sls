base-x:
  cmd.run:
    - name: dnf group install -y base-x
    - unless:
      - dnf group list installed --hidden -v | grep '(base-x)'


# https://github.com/saltstack/salt/issues/42645