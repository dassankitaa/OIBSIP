# Task 8: Capture Network Traffic with Wireshark

## Objective
Capture and analyze network traffic using Wireshark.

## Tool Used
- Wireshark 4.6.4
- tcpdump (for capturing)

## Target
- Interface: eth0
- Traffic Type: ICMP (ping to google.com)

## Commands Used
```bash
sudo tcpdump -i eth0 -w wireshark_capture.pcap &
ping -c 20 google.com
sudo pkill tcpdump
wireshark wireshark_capture.pcap
```

## Captured Traffic Analysis
| Packet | Source | Destination | Protocol | Info |
|--------|--------|-------------|----------|------|
| 3 | 10.0.2.15 | 142.250.183.142 | ICMP | Echo (ping) request |
| 4 | 142.250.183.142 | 10.0.2.15 | ICMP | Echo (ping) reply |
| 7 | 10.0.2.15 | 142.250.183.142 | ICMP | Echo (ping) request |
| 8 | 142.250.183.142 | 10.0.2.15 | ICMP | Echo (ping) reply |

## Findings
- **Total Packets Captured:** 44
- **ICMP Packets Displayed:** 38 (86.4%)
- **Source IP:** 10.0.2.15 (Kali Linux Machine)
- **Destination IP:** 142.250.183.142 (Google Server)
- **Protocol:** ICMP (Internet Control Message Protocol)

## Significance
- **ICMP Traffic:** Shows ping requests and replies between our machine and Google.
- **DNS Packets:** Domain name resolution requests were also captured.
- **Packet Analysis:** Wireshark allows deep inspection of each packet including Ethernet, IP, and protocol layers.

## Files Included
- `wireshark_capture.pcap` - Raw packet capture file
- `README.md` - This file
- `screenshot_wireshark.png` - Wireshark GUI screenshot
- `screenshot_wireshark_filtered.png` - Filtered ICMP packets screenshot

## Conclusion
Wireshark successfully captured and analyzed network traffic. ICMP packets from ping requests to Google were clearly visible and filterable, demonstrating Wireshark's powerful packet analysis capabilities.
