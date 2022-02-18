FROM ubuntu:20.04

RUN apt-get update && apt-get install -y git wget unzip

RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    wget \
    && apt-get -y clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /tmp

RUN wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN apt-get install -y apt-transport-https

RUN dpkg --purge packages-microsoft-prod
RUN dpkg -i packages-microsoft-prod.deb
RUN apt-get update

## 場所と都市のインタラクティブ選択が出てこないようにするため
ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
# RUN apt-get install -y tzdata
# ENV DEBIAN_FRONTEND noninteractive
# RUN apt-get install -y dotnet-sdk-3.1 <<< $'6\n79\n'
# RUN echo 6 | apt-get install -y dotnet-sdk-3.1
# RUN sh -c '/bin/echo -e “6\n79” | apt-get install -y dotnet-sdk-3.1'
# RUN printf "6\n" | apt-get install -y dotnet-sdk-3.1
RUN apt-get install -y dotnet-sdk-3.1

RUN apt-get install -y libgdiplus postgresql postgresql-contrib
# RUN apt-get install -y postgresql postgresql-contrib

RUN service postgresql start

USER postgres

# RUN psql -U postgres <<< $'alter role postgres with password \'XXXXX\';\ncreate database "Implem.Pleasanter";'

# PostgreSQLのログ出力設定
# /etc/postgresql/12/main/postgresql.confを開き、以下の設定を編集します。
# log_destination = 'stderr'
# logging_collector = on
# log_line_prefix = '[%t]%u %d %p[%l]'

WORKDIR /tmp
# ToDO: postgresqlの公式イメージに変更して、configのオーバーライドで反映にしたい
ADD ./config/postgresql.conf /etc/postgresql/12/main/
ADD ./initdb.sh /tmp/
RUN ./initdb.sh

USER root
RUN mkdir /web/
RUN wget https://github.com/Implem/Implem.Pleasanter.NetCore/releases/download/Pleasanter_1.2.28.1/Pleasanter_1.2.28.1.zip
RUN unzip Pleasanter_1.2.28.1.zip
RUN ls -l
RUN mv ./pleasanter /web/
ADD ./config/Rds.json /web/pleasanter/Implem.Pleasanter/App_Data/Parameters/

RUN apt-get install -y dotnet-sdk-5.0

ADD ./docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]



# WORKDIR /web/pleasanter/Implem.CodeDefiner
# RUN dotnet Implem.CodeDefiner.NetCore.dll _rds

# WORKDIR /web/pleasanter/Implem.Pleasanter
# # RUN dotnet Implem.Pleasanter.NetCore.dll
# RUN dotnet Implem.Pleasanter.NetCore.dll --urls http://0.0.0.0:5000



