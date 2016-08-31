# README

## Ansibleのインストール

```
$ sudo apt-add-repository ppa:ansible/ansible
$ sudo apt-get update
$ sudo apt-get -y install ansible
```

## Ansibleの実行

```
$ ansible-playbook server.yml -i hosts -c local
```
