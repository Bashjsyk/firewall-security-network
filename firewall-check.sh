#!/bin/bash

echo "======================================"
echo "     FIREWALL SECURITY CHECK"
echo "======================================"

echo ""
echo "[1] Firewall Status"
sudo ufw status verbose

echo ""
echo "[2] Configured Firewall Rules"
sudo ufw show added

echo ""
echo "[3] Listening Network Ports"
sudo ss -tulpn

echo ""
echo "[4] Network Information"
ip addr

echo ""
echo "[5] Routing Information"
ip route

echo ""
echo "[6] Recent Firewall Logs"
sudo journalctl -k --since "10 minutes ago" | grep -i ufw | tail -20

echo ""
echo "======================================"
echo "       CHECK COMPLETED"
echo "======================================"
