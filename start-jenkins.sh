#!/bin/bash

set -xe

sed -i -e "s/_LDAP_ROOT_DN_/${LDAP_ROOT_DN}/g" /usr/share/jenkins/ref/config.xml
sed -i -e "s/_LDAP_GROUP_SEARCH_BASE_/${LDAP_GROUP_SEARCH_BASE}/g" /usr/share/jenkins/ref/config.xml
sed -i -e "s/_LDAP_USER_SEARCH_BASE_/${LDAP_USER_SEARCH_BASE}/g" /usr/share/jenkins/ref/config.xml
sed -i -e "s/_LDAP_SERVER_/${LDAP_SERVER}/g" /usr/share/jenkins/ref/config.xml
sed -i -e "s/_LDAP_MANAGER_PWD_HASH_/${LDAP_MANAGER_PWD_HASH}/g" /usr/share/jenkins/ref/config.xml
sed -i -e "s/_LDAP_DISPLAY_NAME_ATTRIBUTE_NAME_/${LDAP_DISPLAY_NAME_ATTRIBUTE_NAME}/g" /usr/share/jenkins/ref/config.xml
sed -i -e "s/_LDAP_MANAGER_DN_/${LDAP_MANAGER_DN}/g" /usr/share/jenkins/ref/config.xml

exec /usr/local/bin/jenkins.sh "$@"
