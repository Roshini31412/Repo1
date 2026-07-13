#!/bin/bash
echo "=== System Info Report ==="
echo "Date: $(date)"
echo "Hostname: $(hostname)"
echo "Current User: $(whoami)"
echo "Disk Usage:"
df -h | grep '^/dev'
echo "Memory Usage:"
free -h
echo "Top 5 Processes by CPU:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
