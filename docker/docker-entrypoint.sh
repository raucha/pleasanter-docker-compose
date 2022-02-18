#! /bin/sh

service postgresql start

sleep 3

cd /web/pleasanter/Implem.CodeDefiner
dotnet Implem.CodeDefiner.NetCore.dll _rds &

sleep 3

cd /web/pleasanter/Implem.Pleasanter
# RUN dotnet Implem.Pleasanter.NetCore.dll
dotnet Implem.Pleasanter.NetCore.dll --urls http://0.0.0.0:5000 &

while true; do sleep 3600; done;


