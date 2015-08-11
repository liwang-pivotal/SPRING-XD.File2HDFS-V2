@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  File2HDFS startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Add default JVM options here. You can also use JAVA_OPTS and FILE_HDFS_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windowz variants

if not "%OS%" == "Windows_NT" goto win9xME_args
if "%@eval[2+2]" == "4" goto 4NT_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*
goto execute

:4NT_args
@rem Get arguments from the 4NT Shell from JP Software
set CMD_LINE_ARGS=%$

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\File2HDFS-1.1.0.RELEASE.jar;%APP_HOME%\lib\spring-xd-dirt-1.1.0.RELEASE.jar;%APP_HOME%\lib\postgresql-9.2-1002-jdbc4.jar;%APP_HOME%\lib\spring-web-4.1.4.RELEASE.jar;%APP_HOME%\lib\spring-boot-autoconfigure-1.2.1.RELEASE.jar;%APP_HOME%\lib\spring-expression-4.1.4.RELEASE.jar;%APP_HOME%\lib\spring-cloud-spring-service-connector-1.0.0.RELEASE.jar;%APP_HOME%\lib\spring-cloud-cloudfoundry-connector-1.0.0.RELEASE.jar;%APP_HOME%\lib\groovy-all-2.3.8.jar;%APP_HOME%\lib\validation-api-1.1.0.Final.jar;%APP_HOME%\lib\spring-batch-integration-3.0.3.RELEASE.jar;%APP_HOME%\lib\jboss-logging-3.1.3.GA.jar;%APP_HOME%\lib\spring-oxm-4.1.4.RELEASE.jar;%APP_HOME%\lib\classmate-1.0.0.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.8.jar;%APP_HOME%\lib\spring-xd-tuple-1.1.0.RELEASE.jar;%APP_HOME%\lib\joda-time-2.5.jar;%APP_HOME%\lib\spring-boot-starter-1.2.1.RELEASE.jar;%APP_HOME%\lib\jackson-mapper-asl-1.9.13.jar;%APP_HOME%\lib\spring-security-config-3.2.5.RELEASE.jar;%APP_HOME%\lib\spring-security-web-3.2.5.RELEASE.jar;%APP_HOME%\lib\tomcat-jdbc-8.0.15.jar;%APP_HOME%\lib\spring-xd-rest-domain-1.1.0.RELEASE.jar;%APP_HOME%\lib\mongo-java-driver-2.12.3.jar;%APP_HOME%\lib\spring-aop-4.1.4.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-thymeleaf-1.2.1.RELEASE.jar;%APP_HOME%\lib\curator-framework-2.6.0.jar;%APP_HOME%\lib\guava-16.0.1.jar;%APP_HOME%\lib\spring-ldap-core-1.3.2.RELEASE.jar;%APP_HOME%\lib\spring-security-core-3.2.5.RELEASE.jar;%APP_HOME%\lib\commons-pool-1.5.4.jar;%APP_HOME%\lib\asm-1.0.2.jar;%APP_HOME%\lib\tomcat-embed-el-8.0.15.jar;%APP_HOME%\lib\spring-data-redis-1.4.1.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-web-1.2.1.RELEASE.jar;%APP_HOME%\lib\spring-xd-batch-1.1.0.RELEASE.jar;%APP_HOME%\lib\thymeleaf-spring4-2.1.4.RELEASE.jar;%APP_HOME%\lib\spring-xd-messagebus-spi-1.1.0.RELEASE.jar;%APP_HOME%\lib\thymeleaf-layout-dialect-1.2.7.jar;%APP_HOME%\lib\kryo-shaded-3.0.0.jar;%APP_HOME%\lib\zookeeper-3.4.6.jar;%APP_HOME%\lib\curator-client-2.6.0.jar;%APP_HOME%\lib\spring-batch-core-3.0.3.RELEASE.jar;%APP_HOME%\lib\asm-3.3.1.jar;%APP_HOME%\lib\spring-boot-starter-logging-1.2.1.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-tomcat-1.2.1.RELEASE.jar;%APP_HOME%\lib\thymeleaf-2.1.4.RELEASE.jar;%APP_HOME%\lib\spring-integration-event-4.1.2.RELEASE.jar;%APP_HOME%\lib\spring-batch-admin-manager-1.3.0.RELEASE.jar;%APP_HOME%\lib\log4j-over-slf4j-1.7.8.jar;%APP_HOME%\lib\tomcat-embed-logging-juli-8.0.15.jar;%APP_HOME%\lib\jedis-2.5.2.jar;%APP_HOME%\lib\tomcat-embed-websocket-8.0.15.jar;%APP_HOME%\lib\json-path-1.2.0.jar;%APP_HOME%\lib\spring-context-4.1.4.RELEASE.jar;%APP_HOME%\lib\spring-xd-module-1.1.0.RELEASE.jar;%APP_HOME%\lib\javax.mail-1.4.7.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.8.jar;%APP_HOME%\lib\jackson-databind-2.4.4.jar;%APP_HOME%\lib\jsr305-2.0.0.jar;%APP_HOME%\lib\jolokia-core-1.2.3.jar;%APP_HOME%\lib\spring-boot-actuator-1.2.1.RELEASE.jar;%APP_HOME%\lib\mysql-connector-java-5.1.34.jar;%APP_HOME%\lib\spring-integration-jmx-4.1.2.RELEASE.jar;%APP_HOME%\lib\spring-webmvc-4.1.4.RELEASE.jar;%APP_HOME%\lib\hibernate-validator-5.1.3.Final.jar;%APP_HOME%\lib\spring-xd-analytics-1.1.0.RELEASE.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\args4j-2.0.16.jar;%APP_HOME%\lib\spring-data-commons-1.9.1.RELEASE.jar;%APP_HOME%\lib\javax.batch-api-1.0.jar;%APP_HOME%\lib\xmlpull-1.1.3.1.jar;%APP_HOME%\lib\xpp3_min-1.1.4c.jar;%APP_HOME%\lib\snakeyaml-1.14.jar;%APP_HOME%\lib\reactor-core-1.1.4.RELEASE.jar;%APP_HOME%\lib\gs-collections-5.1.0.jar;%APP_HOME%\lib\spring-boot-starter-security-1.2.1.RELEASE.jar;%APP_HOME%\lib\disruptor-3.2.1.jar;%APP_HOME%\lib\jsr166e-1.0.jar;%APP_HOME%\lib\log4j-1.2.17.jar;%APP_HOME%\lib\gs-collections-api-5.1.0.jar;%APP_HOME%\lib\commons-lang-2.6.jar;%APP_HOME%\lib\spring-data-mongodb-1.6.1.RELEASE.jar;%APP_HOME%\lib\commons-pool2-2.2.jar;%APP_HOME%\lib\slf4j-log4j12-1.7.8.jar;%APP_HOME%\lib\ognl-3.0.8.jar;%APP_HOME%\lib\javassist-3.16.1-GA.jar;%APP_HOME%\lib\tomcat-embed-core-8.0.15.jar;%APP_HOME%\lib\unbescape-1.1.0.RELEASE.jar;%APP_HOME%\lib\spring-tx-4.1.4.RELEASE.jar;%APP_HOME%\lib\spring-xd-ui-1.1.0.RELEASE.jar;%APP_HOME%\lib\curator-recipes-2.6.0.jar;%APP_HOME%\lib\spring-security-ldap-3.2.5.RELEASE.jar;%APP_HOME%\lib\spring-boot-1.2.1.RELEASE.jar;%APP_HOME%\lib\spring-cloud-core-1.0.0.RELEASE.jar;%APP_HOME%\lib\spring-retry-1.1.1.RELEASE.jar;%APP_HOME%\lib\spring-beans-4.1.4.RELEASE.jar;%APP_HOME%\lib\spring-core-4.1.4.RELEASE.jar;%APP_HOME%\lib\slf4j-api-1.7.8.jar;%APP_HOME%\lib\jackson-core-asl-1.9.13.jar;%APP_HOME%\lib\tomcat-juli-8.0.15.jar;%APP_HOME%\lib\spring-plugin-core-1.1.0.RELEASE.jar;%APP_HOME%\lib\spring-hateoas-0.16.0.RELEASE.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\spring-context-support-4.0.7.RELEASE.jar;%APP_HOME%\lib\hsqldb-2.3.2.jar;%APP_HOME%\lib\spring-jdbc-4.1.4.RELEASE.jar;%APP_HOME%\lib\spring-integration-core-4.1.2.RELEASE.jar;%APP_HOME%\lib\spring-xd-spi-common-1.1.0.RELEASE.jar;%APP_HOME%\lib\spring-messaging-4.1.4.RELEASE.jar;%APP_HOME%\lib\minlog-1.3.0.jar;%APP_HOME%\lib\objenesis-2.1.jar;%APP_HOME%\lib\netty-3.7.0.Final.jar;%APP_HOME%\lib\com.ibm.jbatch-tck-spi-1.0.jar;%APP_HOME%\lib\xstream-1.4.7.jar;%APP_HOME%\lib\jettison-1.2.jar;%APP_HOME%\lib\spring-batch-infrastructure-3.0.3.RELEASE.jar;%APP_HOME%\lib\aspectjrt-1.8.1.jar;%APP_HOME%\lib\spring-integration-http-3.0.2.RELEASE.jar;%APP_HOME%\lib\spring-integration-file-3.0.2.RELEASE.jar;%APP_HOME%\lib\commons-io-2.4.jar;%APP_HOME%\lib\commons-collections-3.2.1.jar;%APP_HOME%\lib\spring-batch-admin-resources-1.3.0.RELEASE.jar;%APP_HOME%\lib\aspectjweaver-1.8.1.jar;%APP_HOME%\lib\commons-dbcp-1.4.jar;%APP_HOME%\lib\commons-fileupload-1.3.1.jar;%APP_HOME%\lib\json-smart-2.1.0.jar;%APP_HOME%\lib\spring-xd-module-spi-1.1.0.RELEASE.jar;%APP_HOME%\lib\spring-boot-loader-1.2.1.RELEASE.jar;%APP_HOME%\lib\activation-1.1.jar;%APP_HOME%\lib\jackson-annotations-2.4.0.jar;%APP_HOME%\lib\jackson-core-2.4.4.jar;%APP_HOME%\lib\json-simple-1.1.1.jar

@rem Execute File2HDFS
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %FILE_HDFS_OPTS%  -classpath "%CLASSPATH%"  %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable FILE_HDFS_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%FILE_HDFS_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
