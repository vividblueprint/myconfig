#!/bin/bash

# ////////////////| Ethernet Utilities |////////////////

alias eth='ip -br link'

eth_tool()   { sudo ethtool "$ETH_IFACE" "$@"; }
eth_ip()     { ip -br addr show "$ETH_IFACE"; }
eth_up()     { sudo ip link set "$ETH_IFACE" up; }
eth_down()   { sudo ip link set "$ETH_IFACE" down; }
eth_stats()  { sudo ethtool -S "$ETH_IFACE"; }
eth_driver() { sudo ethtool -i "$ETH_IFACE"; }
eth_ping()   { ping -I "$ETH_IFACE" "$ETH_TARGET"; }
eth_dds()    { sudo tcpdump -i "$ETH_IFACE" -n udp; }

eth_set_ip() {
    sudo ip addr flush dev "$ETH_IFACE" scope global &&
    sudo ip addr add "$ETH_IP" dev "$ETH_IFACE"
}

# ////////////////| End |////////////////
