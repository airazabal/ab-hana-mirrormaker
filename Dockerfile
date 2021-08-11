FROM confluentinc/cp-server-connect-operator:6.1.2.1
ADD configfiles/* /opt/mirrormaker/
ADD entrypoint.sh /opt/mirrormaker/
#RUN chmod 777 /opt/mirrormaker/entrypoint.sh
USER root
RUN chown 1001 /opt/mirrormaker/entrypoint.sh
RUN chmod 755 /opt/mirrormaker/entrypoint.sh
USER 1001
RUN echo `pwd`
#CMD ["/opt/mirrormaker/entrypoint.sh"]
ENTRYPOINT ["/opt/mirrormaker/entrypoint.sh"]
#ENTRYPOINT ["/usr/bin/kafka-mirror-maker", "--consumer.config /opt/mm_consumer.config", "--producer.config /opt/mm_producer.config", "--whitelist hana-bw1-sapslt-abccat-ceitmpx"]
