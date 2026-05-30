# Task 1: Basic Network Scanning with Nmap

## Objective
Perform a network scan to identify open ports and services using Nmap.

## Tool Used
- Nmap 7.98

## Scan Target
Network Subnet: 10.0.2.0/24

## Command Used
```bash
nmap -Pn -sV 10.0.2.0/24 -oN nmap_scan_results.txt
```

## Scan Results

### Host 1: 10.0.2.2 (Windows Machine)
| Port | State | Service | Version |
|------|-------|---------|---------|
| 53 | closed | DNS | - |
| 135 | open | Microsoft RPC | Windows RPC |
| 445 | open | SMB | Microsoft-DS |
| 5000 | open | HTTP | Node.js Express |

### Host 2: 10.0.2.3 (DNS Server)
| Port | State | Service |
|------|-------|---------|
| 53 | open | DNS (tcpwrapped) |

### Host 3: 10.0.2.15 (Kali Linux Machine)
| Port | State | Service | Version |
|------|-------|---------|---------|
| 22 | open | SSH | OpenSSH 10.2p1 |
| 80 | open | HTTP | Apache 2.4.66 |

## Significance of Open Ports

- **Port 22 (SSH):** Used for secure remote login. If exposed publicly, can be brute-forced.
- **Port 80 (HTTP):** Web server running Apache. Unencrypted traffic, vulnerable to interception.
- **Port 135 (MSRPC):** Microsoft RPC service. Common target for Windows exploits.
- **Port 445 (SMB):** File sharing protocol. Historically vulnerable (e.g., EternalBlue/WannaCry).
- **Port 5000 (HTTP/Node.js):** Web application running on Node.js. Could expose APIs.
- **Port 53 (DNS):** Domain Name resolution. Can be abused for DNS amplification attacks.

## Files Included
- `nmap_scan_results.txt` - Raw Nmap output
- `README.md` - This file
- Screenshots of Nmap output

## Conclusion
The network scan successfully identified 3 active hosts with multiple open ports and services. Each open port represents a potential attack surface and should be secured appropriately.
