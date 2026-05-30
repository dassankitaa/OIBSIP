# Task 2: Basic Firewall Configuration with UFW

## Objective
Set up a basic firewall using UFW (Uncomplicated Firewall) on a Linux system.

## Tool Used
- UFW (Uncomplicated Firewall) 0.36.2

## Steps Performed

### 1. Install UFW
```bash
sudo apt install ufw -y
```

### 2. Enable UFW
```bash
sudo ufw enable
```

### 3. Allow SSH (Port 22)
```bash
sudo ufw allow ssh
```

### 4. Deny HTTP (Port 80)
```bash
sudo ufw deny http
```

### 5. Check Firewall Status
```bash
sudo ufw status verbose
```

## Firewall Rules Configured
| Port | Protocol | Action | Reason |
|------|----------|--------|--------|
| 22 | TCP | ALLOW | Secure remote access via SSH |
| 80 | TCP | DENY | Block unencrypted HTTP traffic |

## Significance
- **Allowing SSH (22):** Enables secure remote administration of the system.
- **Denying HTTP (80):** Prevents unencrypted web traffic, reducing attack surface.
- **Default Policy:** Deny all incoming, allow all outgoing traffic.

## Files Included
- `ufw_configuration.sh` - Shell script to configure UFW
- `README.md` - This file
- `screenshot_ufw_status.png` - Screenshot of UFW status

## Conclusion
UFW provides a simple and effective way to manage firewall rules on Linux systems. Proper firewall configuration is essential for securing a system against unauthorized access.
