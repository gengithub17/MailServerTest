# MailServerTest
Dockerのローカルネットワーク内でメールの送受信テストができます。  
SPF, DKIM, DMARCの設定および動作テストでの利用を想定。

## Requirements
- docker
- docker-compose

## Included
- Ubuntu
- BIND9
  - ビルド時点で設定済み
  - コンテナ起動時にサービス起動および各コンテナのresolv.confにてネームサーバーの指定が必要
- Postfix
- postfix-policyd-spf-python
- OpenDKIM
- OpenDMARC
- dnsutils
  - digコマンド等
- inetutils-syslogd
  - syslogのかわりをインストール

## Begin
```
$ git clone https://github.com/gengithub17/MailServerTest.git
$ cd MailServerTest
$ docker-compose build
$ docker-compose up -d
```
各コンテナには以下のコマンドでUbuntuのbashにログイン
```
$ docker ps
$ docker exec -it <Container Name> bash
```

## DNS Table
| Container | Domain Name 	| IP Address |
| :-------: | :---------: 	| :--------: |
| Sender 	| sender.com 	| 172.19.0.2 |
| Imposter 	| --			| 172.19.0.3 |
| Receiver	| receiver.com	| 172.19.0.4 |