# 概要

Dockerに開発環境を構築することとcapistranoでEC2上のインスタンスにコードをdeployすることを目的として作成

以下、ローカル開発環境にdockerの開発環境を作成
* git clone https://github.com/miyazi777/item-app
* ローカルマシンにて./setup.shを実行し、docker上に開発環境を作成

以下、EC2上に本番環境を作成
* awsにEC2にインスタンス作成
* ローカルマシンにてansible-playbook -i hosts site.ymlでEC2インスタンスのプロビジョニング
* EC2マシン上にてssh-keygen -t rsa
* EC2の.ssh/id_rsa.pubの内容をgithubに登録
* docker上のマシンでbundle exec cap production deployでソースをgithubからデプロイする
* railsのsecretを設定するためにbin/rake secret
* ~/.bashrcに以下に生成したsecretを設定する

```
export SECRET_KEY_BASE='6467a592217e93060b3aebce29d0f3e61c89313c1d632c3cff03c42a86a7c723e4285c81142589f5b6274665c1c7c83b29e688e7d7046ba68c253ebc116142f8'
```
* railsを起動 rails s -eproduction

# 課題
* railsの起動をcapistranoで出来ないか？
* secretの環境変数設定もどうにかならないか？ capistranoのタスクでありそう。

