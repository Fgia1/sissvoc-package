#!/bin/bash
set -x #echo on
git clone https://github.com/epimorphics/elda.git
cd elda
git checkout tags/elda-1.2.35
mvn package
cd ..
git clone https://github.com/jyucsiro/sissvoc.git
cd sissvoc
git checkout vanilla-sissvoc
cd ..
mkdir sissvoc-pkg
cd sissvoc-pkg
cp -rf ../elda/elda-common/target/elda-common/* .
cp -rf ../elda/elda-assets/target/elda-assets/xslt .
cp -rf ../sissvoc/resources/ ../sissvoc/default-landing/ .
sed -i "s/<param-value>\/etc\/elda\/conf.d\/{APP}\/\*.ttl<\/param-value>/<param-value>resources\/{APP}\/config\/\*.ttl<\/param-value>/g" WEB-INF/web.xml
jar -cvf sissvoc.war *
mv sissvoc.war ..
