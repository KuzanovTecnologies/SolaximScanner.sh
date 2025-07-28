#!/usr/bin/env bash 
WhatWeb -- find [S1 & S2] == define potential Target IP Address: 68.87.115.135;
DNSRecon -- find [S1 & S2] == if DNS IPv4: 68.87.115.135;
BusterWeb -- find [S1 & S2] == if Upcoming Connections: Search for potential targets;

if IPv4 -- find [S1 & S2] == 68.87.115.135;
if WhatWeb -- find [S1 & S2] == 68.87.115.135;
if DNSRecon -- find [S1 & S2] == 68.87.115.135;

if BusterWeb -- find [S1 & S2] == find any potential cyber threat agent IP Address;