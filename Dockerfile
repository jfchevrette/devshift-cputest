FROM registry.centos.org/centos/centos:7

RUN yum -y install epel-release && \
    yum -y install sysbench && \
    yum clean all