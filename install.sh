#!/bin/bash
#
# download discuz code
discuz_version=Discuz_X3.2_SC_UTF8
discuz_url=http://download.comsenz.com/DiscuzX/3.2/${discuz_version}.zip

echo -e "\033[32m[info]\033[0m  download discuz code..."
curl -sLo ./data/nginx/discuz.zip $discuz_url

cd ./data/nginx/

echo -e "\033[32m[info]\033[0m  unzip discuz.zip..."
unzip discuz.zip &>/dev/null
rm -rf discuz.zip
mv upload html
mv config_global.php html/config/

echo -e "\033[32m[info]\033[0m  change config and mode..."
cd html

chmod o+w ./config
chmod o+w ./data
chmod o+w ./data/avatar
chmod o+w ./data/cache
chmod o+w ./data/plugindata
chmod o+w ./data/download
chmod o+w ./data/addonmd5
chmod o+w ./data/template
chmod o+w ./data/threadcache
chmod o+w ./data/attachment
chmod o+w ./data/attachment/album
chmod o+w ./data/attachment/forum
chmod o+w ./data/attachment/group
chmod o+w ./data/log
chmod o+w ./uc_client/data/cache
chmod o+w ./uc_server/data/
chmod o+w ./uc_server/data/cache
chmod o+w ./uc_server/data/avatar
chmod o+w ./uc_server/data/backup
chmod o+w ./uc_server/data/logs
chmod o+w ./uc_server/data/tmp
chmod o+w ./uc_server/data/view
