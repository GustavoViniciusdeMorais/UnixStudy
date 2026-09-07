#!/bin/bash
ip -c a | tail -n 10 && \
figlet -f big LINUX && \
ip -c l && \
figlet PHP && \
tree /home/gustavo/Studies/bashes && \
echo "MY UPTIME: $(uptime)" && \
figlet -f small SQL && \
for val in {1..2}; do echo '{"name":"Kali Linux"}' | jq . ; done
service ollama status

