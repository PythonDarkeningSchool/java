# Pre-requisites

## Maven

![Download maven](img/maven.JPG)

:link: [Download here](https://maven.apache.org/download.cgi)

Set the proper environment variable `MAVEN_HOME`

## POM

The pom file `pom.xml` is needed in the root source of your project

```xml
<project>
    <groupId>com.mantiso</groupId>
    <artifactId>mvnblog</artifactId>
    <version>1.0</version>
    <packaging>war</packaging>
    <modelVersion>4.0.0</modelVersion>
</project>

```

## Apache tomcat

![apache tomcat](img/tomcat.JPG)

:link: [Download here](https://tomcat.apache.org/download-70.cgi)

Set the proper environment variable `CATALINA_HOME`

- To start tomcat type in terminal the command `catalina start`
- tomcat will running in the following address `http://localhost:8080`



# What is a web application

- Unit of deployment is called a `web application`
  - A web application is a deployable unit of content and configuration
  - Request routed to application using *`URL base`*, e.g: `http://someServer/myApp/endpoint`
  - Web applications may contain static content
  - Web application may contain dynamically generated content
- Java web applications have a standard structure
  - Applications can be deployed by simply copying files
- Can also deploy as a `.war` file
  - `war` stands for  *W*eb *Ar*chive



# Servlets

## Definition

A small, server-resident program that typically runs automatically in response to user input, It is used to control web page content via servlets , which are little programs that run on a web server.

Servlets typically used for `HTTP` protocol

## Interface

The server live cycle consist of 3 things

1. Initialize the servlet

   1. ```java
      public void init()
      ```

2. Servlet method

   1. ```java
      public void service(ServletRequest req, ServletResponse resp);
      
      // ServletRequest,ServletResponse = object
      ```

      ​	

3. Destroy the servlet

   1. ```java
      public void destroy();
      ```

The remaining methods are:

```java
    public ServletConfig getServletConfig();
    public String getServletInfo();
```

- `ServletConfig getServletConfig()`: provide configuration/information for the servlet and its pass through the web with the `XML`  file
- `String getServletInfo()`: provide the string that could be for instance the server name



Below is is the *Servlet interface* complete:

```java
public interface <InterfaceName>{
    public void init(); //
    public void service(ServletRequest req, ServletResponse resp);
    public void destroy();
    public ServletConfig getServletConfig();
    public String getServletInfo();
}
```



