SISSVoc-package ![alt text](http://i.imgur.com/llD3KFb.jpg "CSIRO")
===============
Author: Jonathan Yu (CSIRO) 

Updated: 8/12/2014


Packaging scripts for sissvoc.The packaging script currently targets a vanilla release of SISSVoc and ELDA 1.2.35.

See: 
- https://github.com/jyucsiro/sissvoc
- https://github.com/SISS/sissvoc
- https://github.com/epimorphics/elda

# What is SISSVoc used for?

**SISSVoc provides a user-friendly web interface to a vocabulary already available from a SPARQL endpoint.**

Prior to SISSVoc standard RDF database users had to interact with RDF data by using SPARQL queries. Ask yourself; today how many standard database users access information from a database using SQL? Not many. Even using an atm would be a difficult task if you have never had experience with SQL.

This is where SISSVoc comes in to play. It creates, for the standard vocabulary user, an appropriate interface which is based on the structure of vocabulary data, not generic RDF queries. This means that standard vocabularies can be provided to web users.

While it provided this pleasant interface for humans the main aim was focused on machine-machine RDF database interaction. This is so that data providers can use HTTP links to vocabularies, data applications can be configured with standard terminology, and data clients can retrieve definitions or verify the existence of items claimed to be in particular vocabularies.

### Major Assumptions of SISSVoc

It is assumed that:

- existing vocabularies can be expressed in SKOS/RDF 
- the main use-case involve read-only interaction with vocabularies 
- vocabulary owners may not be willing or able to host their vocabularies, so vocabularies may be hosted by third parties 


Linux Quick-start
-----------------

#### Pre-requisites:
* git
* maven
* python 2.7+
* bash
* sed
* openjdk-7

#### Steps:
1. Unzip `sissvoc-package-master.zip` 
   * Use unzip command from command line: `unzip sissvoc-package-master.zip` when in the correct directory or unzip from file explorer.
2. Navigate to the `sissvoc-package` repo directory.
   * Navigate through the command line: `cd sissvoc-package-master/` if you just used the unzip command, until you are in the extracted file.
   * Sanity check: the ls command in the command line `account@account:~/Downloads/sissvoc-package-master$ ls`should return 
![alt text](http://i.imgur.com/EIYnvfK.png "output")

3. Run `./package-sissvoc-vanilla.sh`
   * Use the following command from the command line: `bash package-sissvoc-vanilla.sh`
4. This should produce and package up sissvoc into `sissvoc.war` which you can deploy in an Application Server such as Tomcat7 or with **jetty-runner** (instructions below).


Windows Quick-start
-------------------

#### Pre-requisites
* Git for Windows (recommend 1.9+ ; [download here](http://git-scm.com/download/win))
* Maven (recommend 3.2+; [download here](http://maven.apache.org/download.cgi))
* JDK 1.7+ (recommend [Sun JDK](see http://www.oracle.com/technetwork/java/javase/downloads/jdk7-downloads-1880260.html))
* python 2.7+


#### Notes:
- Git for Windows will include Bash for Windows. Ensure the Git bin is added to the Windows environment PATH (e.g. by going to Control Panel/System and Security/System/Advanced system settings).
- Ensure Maven bin dir is  added to the Windows environment PATH
- Ensure JDK 1.7 bin dir is added to the Windows environment PATH. Additionally, ensure JAVA_HOME is defined as a Windows environment variable and pointed to the JDK dir.

#### Steps:
1. Navigate to the `sissvoc-package` repo directory.
2. Execute `package-sissvoc-vanilla.bat` 
3. This should produce and package up sissvoc into `sissvoc.war` which you can deploy in an Application Server such as Tomcat7.


Running sissvoc via jetty-runner
--------------------------------

Included in this repo is the jetty-runner. This can be used to run the packaged SISSVoc locally. 

#### Pre-requisites:
* Java 1.7+

#### To run sissvoc locally

Linux
```
   $ java -jar jar/jetty-runner.jar --path /sissvoc sissvoc.war
```   
Windows (for convenience we've written sissvoc-runner.bat)
```
   $ java -jar jar\jetty-runner.jar --path /sissvoc sissvoc.war
```   
   
Then navigate to http://localhost:8080/sissvoc/meta/api for the list of endpoints available.

For more information on jetty-runner, see http://www.eclipse.org/jetty/documentation/current/runner.html






