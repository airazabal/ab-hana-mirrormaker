#!/bin/bash -x
echo "executing kafka mirrormaker" > /tmp/log.txt
/usr/bin/kafka-mirror-maker --consumer.config /opt/mirrormaker/mm_consumer.config --num.streams 1 --producer.config /opt/mirrormaker/mm_producer.config --whitelist hana-bw1-sapslt-abccat-ceitmpx &
echo "executed kafka mirrormaker" >> /tmp/log.txt
