# Port Scanner + Banner Grabber

A simple multi-threaded port scanner written in Python with basic banner grabbing support.

---

## Features

- Multi-threaded TCP port scanning
- Basic banner grabbing
- HTTP response detection
- Common service identification
- Custom port range support
- Custom thread control

---

## Project Structure

```
.
├── port_scanner      # Python script (no .py extension)
├── setup.sh          # Setup script (installs dependencies & permissions)
└── README.md
```

---

## Setup

Run the setup script first:

```bash
bash setup.sh
```

This will:
- Install required packages
- Set permissions
- Prepare the tool for execution

---

## Usage

Since the file has no `.py` extension, run it like this:

### Basic scan (default ports)

```bash
python3 port_scanner -ip 127.0.0.1
```

### Custom port range

```bash
python3 port_scanner -ip 192.168.1.10 -s 1 -e 10000
```

### Custom threads

```bash
python3 port_scanner -ip 192.168.1.10 -s 1 -e 65535 -t 400
```

---

## Arguments

| Argument | Description |
|----------|-------------|
| `-ip` | Target IP or hostname |
| `-s` | Start port |
| `-e` | End port |
| `-t` | Number of threads |

---

## Example Output

```text
[+] Port 22 OPEN | Service: ssh
[+] Port 80 OPEN | Service: http

======================================================================
OPEN PORTS AND BANNERS
======================================================================

Port    : 22
Service : ssh
Banner  : SSH-2.0-OpenSSH_8.2p1 Ubuntu-4ubuntu0.5

Port    : 80
Service : http
Banner  : HTTP/1.1 200 OK
```

---

## Notes

- Make sure the script has execute permission:
```bash
chmod +x port_scanner
```

---

## Disclaimer

This tool is for educational and authorized security testing only.
Do not scan systems without permission.