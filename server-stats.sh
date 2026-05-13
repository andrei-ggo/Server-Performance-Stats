#!/bin/bash
echo "======CPU====="
top -b -d1 -n1 | grep "Cpu(s)"
echo""


echo "=====MEMORY====="
free -h | awk '/^Mem:/ {printf "Total: %s, Used: %s (%.1f%%), Free: %s (%.1f%%)\n", $2, $3, ($3/$2)*100, $4, ($4/$2)*100}'
echo ""

echo "=====TOP 5 PROCESSES CPU AND MEM===== "
ps aux --sort=-%cpu | head -5

ps aux --sort=-%mem | head -5
echo ""

echo "=====OS====="
cat /etc/os-release
echo ""

echo "=====UPTIME====="
uptime -p
