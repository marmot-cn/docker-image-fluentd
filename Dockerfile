FROM fluent/fluentd-kubernetes-daemonset:v1-debian-elasticsearch

COPY ./conf/fluent.conf /fluentd/etc/
COPY ./conf/systemd.conf /fluentd/etc/
COPY ./conf/credit.conf /fluentd/etc/
COPY ./conf/ingress.conf /fluentd/etc/

RUN set -ex \
&& ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
&& echo "Asia/Shanghai" > /etc/timezone
