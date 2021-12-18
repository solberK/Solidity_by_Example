FROM ubuntu:latest
MAINTAINER "YK1211"

//COPY
//ファイルやフォルダをコピーして追加します
//Dockerfile を置いているディレクトリ内のファイル、ディレクトリしかコピーできないため、注意


//ADD
//ファイルやフォルダを追加

//WORKDIR
//RUN, CMD, ENTRYPOINT, COPY, ADD を実行するディレクトリを指定します。
//もし WORKDIR で指定したディレクトリが存在しなければ新しく作成されます

//RUN
//イメージのビルド時に指定したコマンドが実行されます。
//ここにはパッケージのインストールやファイルのコピーなど、イメージの時点で実行しておきたいコマンドを書きます。
RUN apt update -y 
RUN apt install curl vim git net-tools build-essential -y

//CMD
//コンテナの起動時に指定したコマンドが実行される
//CMD の主な目的はコンテナ実行時の初期設定を指定することで、Dockerfile 内で1度しか使うことができません

//ENTRYPOINT
//CMD と同様にコンテナの起動時に指定したコマンドが実行されルガ、コマンドの実行を強要するというのが CMD との違い
