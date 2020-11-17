# MySQL Server
# docker pull barnybug/mysql-server
# taken from: https://github.com/kstaken/dockerfile-examples/tree/master/mysql-server
#
# VERSION               0.0.1
FROM ubuntu:18.04

# install mysql-server
RUN apt-get install -y mysql-server-core-8.0.22 mysql-client-core-8.0.22 && apt-get clean
# post installation fixes
ADD my.cnf /etc/mysql/
ADD mysql-setup.sh /tmp/
RUN /tmp/mysql-setup.sh

CMD ["/usr/sbin/mysqld"]
