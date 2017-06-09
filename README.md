# Jenkins

================

Customized Jenkins image based on the official [Jenkins](https://hub.docker.com/r/_/jenkins/) docker image.

The following has been updated/modified:

* Pre-installed plugins
* LDAP authentication out of the box and configurable at runtime

## Pre-installed plugins

This image comes with plugins pre-installed. A list of these plugins can be found in plugins.txt

## LDAP config

When starting an instance of this image the LDAP configuration can be passed through predefined environment variables. An example compose configuration is show below.

    version: '2'
    services:
      jenkins:
        image: ictu/jenkins:latest
        environment:
          - "LDAP_SERVER=1.2.3.4:389"
          - "LDAP_ROOT_DN=dc=example,dc=com"
          - "LDAP_USER_SEARCH_BASE=ou=employees,o=myCompany"
          - "LDAP_GROUP_SEARCH_BASE=ou=employees,o=myCompany"
          - "LDAP_MANAGER_DN=cn=Manager,dc=ictu,dc=nl"
          - "LDAP_MANAGER_PWD=MyPwd"
          - "LDAP_DISPLAY_NAME_ATTRIBUTE_NAME=cn"
