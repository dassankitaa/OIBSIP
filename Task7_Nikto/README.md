# Task 7: Vulnerability Scanning with Nikto

## Objective
Use Nikto to perform a vulnerability scan on a web server.

## Tool Used
- Nikto v2.6.0

## Target
- Host: 127.0.0.1 (Local Apache Web Server)
- Port: 80

## Command Used
```bash
nikto -h 127.0.0.1 -maxtime 60 | tee nikto_scan_results.txt
```

## Scan Results Summary
| Finding | Severity | Description |
|---------|----------|-------------|
| ETag inode leak | Medium | Server leaks inode info via ETags (CVE-2003-1418) |
| Missing referrer-policy | Low | Security header missing |
| Missing x-content-type-options | Low | Security header missing |
| Missing strict-transport-security | Medium | Security header missing |
| Missing permissions-policy | Low | Security header missing |
| Missing content-security-policy | Medium | Security header missing |
| /server-status exposed | Medium | Apache mod_status reveals server info |

## Significance of Findings
- **ETag Inode Leak:** Can reveal internal server file structure to attackers.
- **Missing Security Headers:** Makes server vulnerable to XSS and clickjacking attacks.
- **Server-Status Exposed:** Reveals Apache version and activity to attackers.

## Files Included
- `nikto_scan_results.txt` - Raw Nikto scan output
- `README.md` - This file
- `screenshot_nikto_scan.png` - Screenshot of scan output

## Conclusion
Nikto identified several vulnerabilities on the Apache web server including missing security headers and information disclosure issues. These should be fixed to improve server security.
