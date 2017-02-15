# rabbitmq 

FROM rabbitmq    

MAINTAINER yang <493122220@qq.com>   

ENV RABBITMQ_DEFAULT_USER=app
ENV RABBITMQ_DEFAULT_PASS=app123456

RUN rabbitmq-plugins enable --offline rabbitmq_management

EXPOSE 5672 15671 15672
