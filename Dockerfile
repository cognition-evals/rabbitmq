FROM rabbitmq:3.9-management

COPY rabbitmq.conf /etc/rabbitmq/

ENV RABBITMQ_NODENAME=rabbit@localhost

RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.conf \
 && chown rabbitmq:rabbitmq /var/lib/rabbitmq/.erlang.cookie \
 && chmod 400 /var/lib/rabbitmq/.erlang.cookie

USER rabbitmq
