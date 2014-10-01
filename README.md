sissvoc-package
===============
Author: Jonathan Yu (CSIRO)

Updated: 1/10/2014


Packaging scripts for sissvoc.The packaging script currently targets a vanilla release of SISSVoc and ELDA 1.2.35.

See: 
- https://github.com/jyucsiro/sissvoc
- https://github.com/SISS/sissvoc
- https://github.com/epimorphics/elda


Linux Quick-start
-----------------

Pre-requisites:
* git
* python 2.7+
* bash
* sed
* openjdk-7

## Steps
1. Navigate to the sissvoc-package repo directory.
2. Run ./package-sissvoc-vanilla.sh
3. This should produce and package up sissvoc into sissvoc.war which you can deploy in an Application Server such as Tomcat7.


Windows Quick-start
-------------------

## Pre-requisites
* Git for Windows (recommend 1.9+ ; see http://git-scm.com/download/win)
* Maven (recommend 3.2+; see http://maven.apache.org/download.cgi)
* JDK 1.7+ (recommend Sun JDK ; see http://www.oracle.com/technetwork/java/javase/downloads/jdk7-downloads-1880260.html)
* python 2.7+


## Notes:
- Git for Windows will include Bash for Windows. Ensure the Git bin is added to the Windows environment PATH (e.g. by going to Control Panel/System and Security/System/Advanced system settings).
- Ensure Maven bin dir is  added to the Windows environment PATH
- Ensure JDK 1.7 bin dir is added to the Windows environment PATH. Additionally, ensure JAVA_HOME is defined as a Windows environment variable and pointed to the JDK dir.

## Steps:
1. Navigate to the sissvoc-package repo directory.
2. Execute package-sissvoc-vanilla.bat 
3. This should produce and package up sissvoc into sissvoc.war which you can deploy in an Application Server such as Tomcat7.


Running sissvoc via jetty-runner
--------------------------------

Included in this repo is the jetty-runner. This can be used to run the packaged SISSVoc locally. 

##Pre-requisites:
* Java 1.7+

##To run sissvoc locally

Linux
'''
   $ java -jar jar/jetty-runner.jar --path /sissvoc sissvoc.war
'''   
Windows (for convenience we've written sissvoc-runner.bat)
'''
   $ java -jar jar\jetty-runner.jar --path /sissvoc sissvoc.war
'''   
   
Then navigate to http://localhost:8080/sissvoc/meta/api for the list of endpoints available.

For more information on jetty-runner, see http://www.eclipse.org/jetty/documentation/current/runner.html






