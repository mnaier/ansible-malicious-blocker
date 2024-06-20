# Deny IPs and Domains using Ansible, nftables firewall, and unbound DNS

This project automates the process of denying specific IP addresses using `nftables` and specific domain names using `unbound DNS` through Ansible playbooks.

## Directory Structure
```
 ansible-malicious-blocker/
├── deny.yml
├── roles/
│ ├── nftables/
│ │ ├── tasks/
│ │ │ └── main.yml
│ │ ├── files/
│ │ │ └── ips.txt
│ │ └── handlers/
│ │ └── main.yml
│ └── unbound/
│ ├── tasks/
│ │ └── main.yml
│ ├── files/
│ │ └── domains.txt
│ └── handlers/
│ └── main.yml
└── inventory # Your Ansible inventory file
```
## Getting Started

### Prerequisites

- Ansible installed on your control machine.
- `nftables` and `unbound` installed on the target machines.
- IP addresses to block listed in `ips.txt`.
- Domain names to block listed in `domains.txt`.

### Usage

1. **Clone the repository:**

   ```sh
   git clone https://github.com/mnaier/ansible-malicious-blocker.git
   cd ansible-malicious-blocker
