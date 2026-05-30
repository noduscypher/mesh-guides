#!/usr/bin/env bash
# nodecheck — quick health check for the rawmesh node
# walk quietly, but keep the signal alive

line() { printf '%s\n' "────────────────────────────"; }

line
echo "  NODE CHECKUP · $(date '+%Y-%m-%d %H:%M:%S %Z')"
line

# uptime
echo "uptime:"
uptime -p
echo

# power / throttle (0x0 = clean)
echo "power (vcgencmd get_throttled):"
echo "  0x0 = clean · anything else = undervolt/throttle"
vcgencmd get_throttled
echo

# temperature
echo "temp:"
vcgencmd measure_temp
echo

# services
line
echo "  SERVICES"
line
for svc in rnsd nomadnet; do
  state=$(systemctl is-active "$svc" 2>/dev/null)
  boot=$(systemctl is-enabled "$svc" 2>/dev/null)
  since=$(systemctl show -p ActiveEnterTimestamp --value "$svc" 2>/dev/null)
  printf "%-10s : %-8s | boot: %-9s | since: %s\n" "$svc" "$state" "$boot" "$since"
done
echo

# listening ports (the ones that matter)
line
echo "  PORTS"
line
echo "  4242 rnsd · 8788 meshchat · 8789 meshchatx · 8088 kiwix"
ss -tlnp 2>/dev/null | grep -E ':4242|:8788|:8789|:8088' || echo "  (none of the watched ports are listening)"
echo

# disk
line
echo "  DISK"
line
df -h / | awk 'NR==1 || /\/$/'
line
