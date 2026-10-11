# Firewall Security and Network Monitoring Using Ubuntu Linux

## Project Overview

This project demonstrates the configuration, inspection, and monitoring of firewall rules and network activity using Ubuntu Linux.

The project uses Uncomplicated Firewall (UFW) to manage incoming and outgoing network traffic. A Bash script automates the collection of firewall status, configured rules, listening network ports, network interface information, routing information, and recent firewall log entries.

The project was developed in an Ubuntu virtual machine using VirtualBox to gain practical experience in firewall management, network security, and defensive security monitoring.

## Objectives

* Understand the role of firewalls in network security.
* Configure and inspect firewall rules using UFW.
* Apply a default-deny policy for incoming traffic.
* Allow required services such as SSH and HTTP/HTTPS.
* Configure an explicit deny rule for TCP port 8080.
* Identify listening network ports and associated processes.
* Examine network interfaces and routing information.
* Enable and inspect firewall logging.
* Automate security checks using Bash scripting.
* Document practical security findings for future reference.

## Technologies and Tools

* Ubuntu Linux 24.04 LTS
* Uncomplicated Firewall (UFW)
* Bash Scripting
* `ss` — Network socket inspection
* `ip` — Network interface and routing inspection
* `journalctl` — System and firewall log inspection
* VirtualBox
* Git
* GitHub

## Security Features

### 1. Firewall Configuration

UFW is enabled to manage network traffic according to configured rules.

The firewall uses the following policies:

* Incoming traffic: Denied by default.
* Outgoing traffic: Allowed by default.
* Routed traffic: Disabled by default.

### 2. Firewall Rules

The configured rules include:

* SSH (TCP port 22): Allowed.
* HTTP and HTTPS (TCP ports 80 and 443): Allowed.
* TCP port 8080: Explicitly denied.
* Corresponding IPv6 rules: Configured.

### 3. Network Port Inspection

The project uses the `ss` command to identify listening TCP and UDP ports and, where permitted, the processes associated with them.

### 4. Network Configuration Analysis

The project examines network interfaces, IP addresses, and routing information to understand how the Ubuntu virtual machine communicates with other networks.

### 5. Firewall Logging

UFW logging is enabled at medium level. Recent kernel log entries are inspected to observe recorded firewall activity.

## Bash Monitoring Script

The `firewall-check.sh` script collects information about:

1. Firewall status.
2. Configured firewall rules.
3. Listening network ports and processes.
4. Network interface configuration.
5. Routing information.
6. Recent firewall log entries.

## Testing and Results

The following checks were completed:

* Confirmed that UFW was active.
* Verified that incoming traffic was denied by default.
* Confirmed that SSH and Nginx firewall rules were configured.
* Confirmed that TCP port 8080 had an explicit deny rule.
* Verified that Nginx returned an HTTP 200 OK response on localhost.
* Confirmed that no service was listening on TCP port 8080 at the time of testing.
* Verified that UFW logging was enabled and producing log entries.
* Inspected the network interface and routing table.

**Testing note:** The localhost Nginx test confirmed that the web server responded successfully. The absence of a listener on port 8080 did not independently prove that an incoming connection was blocked by the firewall.

## How to Run the Project

Clone the repository:

```bash
git clone https://github.com/Bashjsyk/firewall-security-network.git
```

Enter the project directory:

```bash
cd firewall-security-network
```

Make the script executable:

```bash
chmod +x firewall-check.sh
```

Run the script:

```bash
./firewall-check.sh
```

The script may request your Ubuntu password when it runs commands requiring administrator privileges.

## Project Structure

```text
firewall-security-network/
├── firewall-check.sh
└── README.md
```

## Learning Outcomes

This project provided practical experience with firewall configuration, network inspection, Linux command-line tools, log monitoring, and Bash automation.

It also demonstrated how firewall rules and network information can be examined as part of a defensive security workflow.

