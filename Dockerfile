FROM jenkins:2.7.1-alpine

COPY plugins.txt /plugins.txt
COPY config.xml /usr/share/jenkins/ref/config.xml

ENV LDAP_SERVER= \
    LDAP_ROOT_DN= \
    LDAP_USER_SEARCH_BASE= \
    LDAP_GROUP_SEARCH_BASE= \
    LDAP_MANAGER_DN= \
    LDAP_MANAGER_PWD_HASH= \
    LDAP_DISPLAY_NAME_ATTRIBUTE_NAME=

RUN /usr/local/bin/plugins.sh /plugins.txt

COPY start-jenkins.sh /start-jenkins.sh

ENTRYPOINT ["/bin/tini", "--", "/start-jenkins.sh"]