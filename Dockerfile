FROM rabbitmq:3.8.15-management

ENV RABBITMQ_NODENAME=rabbit@localhost

RUN rabbitmq-plugins enable --offline rabbitmq_prometheus

COPY rabbitmq.conf /etc/rabbitmq/rabbitmq.conf

EXPOSE 5672 15672 15692
