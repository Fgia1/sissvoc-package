#!/bin/bash
## STEP 4
echo -e "\n STEP 4"

echo -e "\n"
ls

while true; do
read -p " Please Note that you must be in the sissvoc-package dir. is this the case? y or n " yn
 case $yn in
        [Yy]* )  break;;
        [Nn]* )  echo -e "\nPlease move this script to the correct dir\n"; exit;;
        * ) echo "Please answer yes or no.  : ";;
    esac
done

cd configs

echo Please, enter the name of your vocabulary and click [enter]. *Must all be lowercase
                read NAME
                echo "Your vocab name is $NAME!"

cp default-config.properties $NAME-config.properties

echo -e "Please make the changes to the following text file : \n"

echo -e - "\nNeed instructions on what to change?? - visit : https://github.com/CSIRO-enviro-informatics/sissvoc-package/wiki/How-to-deploy-a-SISSVoc-endpoint\n"

xdg-open $NAME-config.properties

read -p "Done??? Press [Enter]"

echo -e "\n\n Okay, now you must edit the package-sissvoc-vanilla--no-build.sh script to include your vocabulary \n\nI will open it up for you....."

cd ..

xdg-open package-sissvoc-vanilla--no-build.sh 

read -p "Done??? Press [enter] "

echo -e "\n\n We can now run the package-sissvoc-vanilla--no-build.sh"

bash package-sissvoc-vanilla--no-build.sh

echo -e "\n\n If the above line says '+ mv sissvoc.war ..' You are now ready to deploy the sissvoc.war file!! \n Congrats! \n\n If you would like to just deploy it locally then you can use this terminal command :  java -jar jar/jetty-runner.jar --path /sissvoc sissvoc.war "

echo -e "\n Then visit the url : http://localhost:8080/sissvoc/meta/api "

