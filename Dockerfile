FROM fluent/fluentd-kubernetes-daemonset:v1-debian-elasticsearch

RUN set -ex \
&& ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
&& echo "Asia/Shanghai" > /etc/timezone \
&& rm -rf /fluentd/etc/*

COPY ./conf/fluent.conf /fluentd/etc/
COPY ./conf/credit.conf /fluentd/etc/
COPY ./conf/ingress.conf /fluentd/etc/
