vscode-repo-key:
  cmd.run:
    - name: rpm --import https://packages.microsoft.com/keys/microsoft.asc

vscode-repo:
  pkgrepo.managed:
    - humanname: Visual Studio Code
    - baseurl: https://packages.microsoft.com/yumrepos/vscode
    - gpgcheck: 1
    - gpgkey: https://packages.microsoft.com/keys/microsoft.asc
    - enabled: 1
    - require:
        - cmd: vscode-repo-key