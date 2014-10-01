#!/bin/bash
## This script assumes that elda and sissvoc releases have been downloaded and unpacked as per the package-sissvoc-vanilla.sh script.
## This script allows users to modify/add/configure files to the elda/sissvoc releases and package into sissvoc.war
set -x #echo on
cd sissvoc
cd build
#build default and pizza sissvoc configs
#cp ../../configs/pizza-config.properties ../../configs/default-config.properties  .
python gen_sissvoc3_config.py --config=../../configs/default-config.properties default_sissvoc.ttl
python gen_sissvoc3_config.py --config=../../configs/pizza-config.properties pizza_sissvoc.ttl
cd ../..
#create sissvoc package and output war file for application server
mkdir sissvoc-pkg
cd sissvoc-pkg
cp -rf ../elda/elda-common/target/elda-common/* .
cp -rf ../elda/elda-assets/target/elda-assets lda-assets
cp -rf ../sissvoc/resources/ ../sissvoc/default-landing/ .
rm resources/default/config/*
cp ../sissvoc/build/default_sissvoc.ttl ../sissvoc/build/pizza_sissvoc.ttl resources/default/config
sed -i "s/<param-value>\/etc\/elda\/conf.d\/{APP}\/\*.ttl<\/param-value>/<param-value>resources\/default\/config\/\*.ttl<\/param-value>/g" WEB-INF/web.xml
jar -cvf sissvoc.war *
mv sissvoc.war ..
