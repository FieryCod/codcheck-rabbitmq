FROM rabbitmq:3.7.7-management-alpine

MAINTAINER <kwcharllie379@gmail.com>

ADD rabbitmq.config /etc/rabbitmq/
ADD definitions.json /etc/rabbitmq/

EXPOSE 5672
EXPOSE 15672

CMD ["rabbitmq-server"]
