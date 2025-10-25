FROM rabbitmq:3.8.15-management

ENV RABBITMQ_NODENAME=rabbit@localhost

COPY rabbitmq.conf /etc/rabbitmq/rabbitmq.conf
