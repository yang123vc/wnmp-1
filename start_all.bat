@echo off

set base_path=%cd%
set mariadb_path=%base_path%\bin\mariadb
set mongodb_path=%base_path%\bin\mongodb
set redis_path=%base_path%\bin\redis
set nginx_path=%base_path%\bin\nginx
set php56_path=%base_path%\bin\php56
set php7_path=%base_path%\bin\php7

pushd %mariadb_path%
"../plugins/RunHiddenConsole" "bin/mysqld.exe" "--defaults-file=my.ini"
popd

pushd %mongodb_path%
"../plugins/RunHiddenConsole" "bin/mongod.exe" "--config" "mongod.conf"
popd

pushd %redis_path%
"../plugins/RunHiddenConsole" "redis-server.exe" "redis.windows.conf"
popd

pushd %php7_path%
"../plugins/RunHiddenConsole" "../plugins/php-cgi-spawner.exe" "php-cgi.exe -c php.ini" 9000 5
popd

pushd %nginx_path%
"../plugins/RunHiddenConsole" "nginx.exe"
popd

