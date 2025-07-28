#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# Target IP
TARGET_IP="68.87.115.135"

echo "[+] Running WhatWeb on TARGET_IP..."
if command -v whatweb >/dev/null 2>&1; then
    whatweb $TARGET_IP
else
    echo "[!] WhatWeb not found. Please install it with: sudo apt install whatweb"
fi

echo "[+] Running DNSRecon on $TARGET_IP..."
if command -v dnsrecon >/dev/null 2>&1; then 
    dnsrecon -t std -n 8.8.8.8 -d $TARGET_IP
else 
    echo "[!] DNSRecon not found please install it with sudo apt install dnsrecon"
fi

echo "[+] Running Nmap on $TARGET_IP..."
if command -v nmap >/dev/null 2>&1; then 
    nmap -sV -Pn $TARGET_IP
else 
    echo "[!] Nmap not found. please install it with sudo apt install nmap"
fi
