 <div id="top"></div> 

<br />
<div align="center">
  <a href="logo.gif">
    <img src="logo/logo.gif" alt="Logo" width="700" height="300" style="border-radius: 50%"/>
  </a>

  
  <h3 align="center"> Sistema mapeador de galaxias</h3>

  <h4 align="center">
     <br />
    <a href="https://github.com/othneildrew/Best-README-Template"><strong>Explore the docs »</strong></a>
    <br />
    <br />
     ·
    <a href="">Reportar Bug</a>
    ·
    <a href="">Soliciatar recurso</a>
  </p>
</div>

 <h3 align="center">
Sistema de código aberto para dados de consulta e pesquisa, as informações contida foram desenvolvidas usando como base a estruturas da <a href="https://www.nasa.gov/subject/6893/nebulae/" target="_blank">NASA</a>
 e o laboratorio <a href="https://chandra.harvard.edu/photo/2007/orion/" target="_blank">Chandra</a> usando dados estruturais da base organizacional.
<p align="center">
 
 


## 🔩 Instruções para uso local

Clone o repositório:

Git:
```
$ git clone https://github.com/Mario23junior/Galaxy-API.git
```
Ou baixe um ZIP de main [manualmente](https://github.com/Mario23junior/Galaxy-API/archive/refs/heads/main.zip) e expanda o conteúdo em algum lugar em seu sistema

## 📋  Pré-requisitos

* Tenha um JDK Java instalado
* Tenha o Mysql
* Tenha o java devidamente configurando.

## ⚛️ CLI

Abra o terminal de comando e verifique se todos os compartimentos necessários estão em seu devido path e atualizados:

```
$ java -versão
# ^ deve ser pelo menos *8
$ mvn -V
# ^ mysql  Ver 8.0.34-0ubuntu0.22.04.1 for Linux on x86_64 ((Ubuntu))
```

##  📚 📖 Consulte a documentação github

```
 git-hub
```

Em seguida adicione seu servido na aplicação local e execute

 

Você deve ver uma saída como a seguinte:
```
 ⠀ out. 06, 2023 4:03:36 PM org.apache.catalina.startup.VersionLoggerListener log
INFORMAÇÕES: Server version name:   Apache Tomcat/8.5.91
out. 06, 2023 4:03:36 PM org.apache.catalina.startup.VersionLoggerListener log
INFORMAÇÕES: Server built:          Jul 6 2023 14:43:48 UTC
out. 06, 2023 4:03:36 PM org.apache.catalina.startup.VersionLoggerListener log
INFORMAÇÕES: Server version number: 8.5.91.0
out. 06, 2023 4:03:36 PM org.apache.catalina.startup.VersionLoggerListener log
INFORMAÇÕES: OS Name:               Linux
out. 06, 2023 4:03:36 PM org.apache.catalina.startup.VersionLoggerListener log
INFORMAÇÕES: OS Version:            5.15.0-84-generic
out. 06, 2023 4:03:36 PM org.apache.catalina.startup.VersionLoggerListener log
INFORMAÇÕES: Architecture:          amd64
out. 06, 2023 4:03:36 PM org.apache.catalina.startup.VersionLoggerListener log
INFORMAÇÕES: Java Home:             /usr/lib/jvm/java-19-openjdk-amd64
out. 06, 2023 4:03:36 PM org.apache.catalina.startup.VersionLoggerListener log
INFORMAÇÕES: JVM Version:           19.0.2+7-Ubuntu-0ubuntu322.04
out. 06, 2023 4:03:36 PM org.apache.catalina.startup.VersionLoggerListener log
INFORMAÇÕES: JVM Vendor:            Private Build
out. 06, 2023 4:03:36 PM org.apache.catalina.startup.VersionLoggerListener log
INFORMAÇÕES: CATALINA_BASE:         /home/ovini/Projetos/.metadata/.plugins/org.eclipse.wst.server.core/tmp1
out. 06, 2023 4:03:36 PM org.apache.catalina.startup.VersionLoggerListener log
INFORMAÇÕES: CATALINA_HOME:         /opt/apache-tomcat-8.5.91
out. 06, 2023 4:03:36 PM org.apache.catalina.startup.VersionLoggerListener log
INFORMAÇÕES: Command line argument: -Dcatalina.base=/home/ovini/Projetos/.metadata/.plugins/org.eclipse.wst.server.core/tmp1
out. 06, 2023 4:03:36 PM org.apache.catalina.startup.VersionLoggerListener log
INFORMAÇÕES: Command line argument: -Dcatalina.home=/opt/apache-tomcat-8.5.91
out. 06, 2023 4:03:36 PM org.apache.catalina.startup.VersionLoggerListener log
INFORMAÇÕES: Command line argument: -Dwtp.deploy=/home/ovini/Projetos/.metadata/.plugins/org.eclipse.wst.server.core/tmp1/wtpwebapps
out. 06, 2023 4:03:36 PM org.apache.catalina.startup.VersionLoggerListener log
INFORMAÇÕES: Command line argument: --add-opens=java.base/java.lang=ALL-UNNAMED
out. 06, 2023 4:03:36 PM org.apache.catalina.startup.VersionLoggerListener log
INFORMAÇÕES: Command line argument: --add-opens=java.base/java.io=ALL-UNNAMED
out. 06, 2023 4:03:36 PM org.apache.catalina.startup.VersionLoggerListener log
INFORMAÇÕES: Command line argument: --add-opens=java.base/java.util=ALL-UNNAMED
out. 06, 2023 4:03:36 PM org.apache.catalina.startup.VersionLoggerListener log
INFORMAÇÕES: Command line argument: --add-opens=java.base/java.util.concurrent=ALL-UNNAMED
out. 06, 2023 4:03:36 PM org.apache.catalina.startup.VersionLoggerListener log
INFORMAÇÕES: Command line argument: --add-opens=java.rmi/sun.rmi.transport=ALL-UNNAMED
out. 06, 2023 4:03:36 PM org.apache.catalina.startup.VersionLoggerListener log
INFORMAÇÕES: Command line argument: -Dfile.encoding=UTF-8
out. 06, 2023 4:03:36 PM org.apache.catalina.startup.VersionLoggerListener log
INFORMAÇÕES: Command line argument: -XX:+ShowCodeDetailsInExceptionMessages
out. 06, 2023 4:03:36 PM org.apache.catalina.core.AprLifecycleListener lifecycleEvent
INFORMAÇÕES: The Apache Tomcat Native library which allows using OpenSSL was not found on the java.library.path: [/usr/java/packages/lib:/usr/lib/x86_64-linux-gnu/jni:/lib/x86_64-linux-gnu:/usr/lib/x86_64-linux-gnu:/usr/lib/jni:/lib:/usr/lib]
out. 06, 2023 4:03:36 PM org.apache.coyote.AbstractProtocol init
INFORMAÇÕES: Initializing ProtocolHandler ["http-nio-8080"]
out. 06, 2023 4:03:36 PM org.apache.catalina.startup.Catalina load
INFORMAÇÕES: Initialization processed in 749 ms
out. 06, 2023 4:03:36 PM org.apache.catalina.core.StandardService startInternal
INFORMAÇÕES: Starting service [Catalina]
out. 06, 2023 4:03:36 PM org.apache.catalina.core.StandardEngine startInternal
INFORMAÇÕES: Starting Servlet engine: [Apache Tomcat/8.5.91]
out. 06, 2023 4:03:37 PM org.apache.jasper.servlet.TldScanner scanJars
INFORMAÇÕES: At least one JAR was scanned for TLDs yet contained no TLDs. Enable debug logging for this logger for a complete list of JARs that were scanned but no TLDs were found in them. Skipping unneeded JARs during scanning can improve startup time and JSP compilation time.
out. 06, 2023 4:03:37 PM org.apache.coyote.AbstractProtocol start
INFORMAÇÕES: Starting ProtocolHandler ["http-nio-8080"]
out. 06, 2023 4:03:37 PM org.apache.catalina.startup.Catalina start
INFORMAÇÕES: Server startup in 698 ms

```
## 🔧 🔨 🛠  Construído com ⛏ 🪚 🔩 ⚙️

* [Java 19](https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html)
* [Eclipse](https://www.eclipse.org/downloads/)
* [NASA](https://solarsystem.nasa.gov/)
* [MYSQL](https://www.mysql.com/)
* [JavaServer Pages](https://www.ibm.com/docs/pt-br/b2b-integrator/6.0.0?topic=extensions-javaserver-pages-standard-tag-library-jstl-overview)
* [CHANDRA](https://chandra.harvard.edu/resources/animations/)


## 📄 Licença

Este projeto está sob a licença (GNU GPLv3) - [GNU GPLv3.md](https://www.gnu.org/licenses/gpl-3.0.pt-br.html)
