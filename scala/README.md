# Specifing a  volume:
docker run -v /my/local/path:/container/mount/path
# Example:
docker run --rm -v /home/vperego/tpch/sf_1/:/data/  --network kafka-net vpperego/scala scala /kafkaTools-assembly-0.1.jar /data/q3.conf