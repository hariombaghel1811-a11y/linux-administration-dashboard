<div align="center">

# 🐧 Linux Administration & System Management CLI Dashboard
### *An Enterprise-Grade, Modular Bash Automation Suite for Server Telemetry, Backup Redundancy & Security Auditing*

[![Shell Script](https://img.shields.io/badge/Language-Bash%20Shell-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)](https://www.gnu.org/software/bash/)
[![Linux Platform](https://img.shields.io/badge/Platform-Ubuntu%20%7C%20Debian%20%7C%20RHEL-FCC624?style=for-the-badge&logo=linux&logoColor=black)](https://www.linux.org/)
[![Version](https://img.shields.io/badge/Version-v1.0.0-blue?style=for-the-badge)]()
[![Status](https://img.shields.io/badge/Production-Ready-brightgreen?style=for-the-badge)]()
[![Security Audit](https://img.shields.io/badge/Security-Automated%20Audit-red?style=for-the-badge&logo=shield)](https://github.com/)

<p align="center">
  <b>Built for Linux Administration Lab | Alliance University</b><br>
  A zero-dependency, headless CLI tool simplifying server diagnostics, dynamic filesystem alerts, and privilege audits.
</p>

---
</div>

## 📌 Project Overview
In modern headless server environments (AWS EC2, Google Cloud, bare-metal nodes), graphical desktop interfaces (GUIs) are disabled to optimize CPU/RAM utilization and harden system security. System administrators are often forced to memorize and manually execute dozens of disparate terminal commands (`ps`, `ss`, `free`, `df`, `tar`, `awk`) for routine monitoring, storage backups, and identity audits.

The **Linux Administration Dashboard** provides a robust, menu-driven command-line suite that unifies real-time hardware telemetry, non-destructive automated file backups, and vulnerability scanning into an isolated, modular Bash framework with zero third-party dependencies.

---

## 👥 Engineering Team & Core Responsibilities

| Contributor | Registration No | Core Functional Role | Module Assigned |
| :--- | :---: | :--- | :--- |
| **Zubair Aarfa Nisha** | `2411021060827` | **Team Lead & Systems Engineer** | Module 1: System Admin & Health Monitoring |
| **Komerla Gowtham Krishna** | `2411021060231` | **Storage & Redundancy Engineer** | Module 2: Storage & Backup Administration |
| **Hariom Baghel** | `2411021060975` | **Automation & Security Engineer** | Module 3: Identity & Security Auditing |
| **Aishwarya M** | `2411021060993` | **QA & Technical Documentation** | Test Verification, Code Standards & PPT |

---

## 🧰 Tech Stack & System Requirements

`Bash 5.0+` • `POSIX Coreutils` • `awk / sed` • `tar (gzip)` • `systemctl` • `ss / netstat` • `Ubuntu 20.04+ / Debian 11+ / macOS`

---

## 🖥️ Live Terminal Interface (Interactive CLI Preview)

```text
==========================================================
       LINUX ADMINISTRATION DASHBOARD - GROUP PROJECT     
==========================================================
1. System Administration       [Zubair Aarfa Nisha]
2. Storage & Backup Manager    [Komerla Gowtham Krishna]
3. Automation & Security       [Hariom Baghel]
4. System Quick Diagnostics
5. Exit Dashboard
==========================================================
Select Module [1-5]:
~/linux_dashboard/
│
├── dashboard.sh                     # Central Interactive CLI Controller & Router
│
├── scripts/                         # Decoupled Operational Submodules
│   ├── system_admin.sh              # Telemetry, Kernel info, RAM/CPU & Services
│   ├── storage_backup.sh            # Dynamic Disk Tracking & Self-Excluding Tarballs
│   └── automation_security.sh       # Privilege Audits (UID 0), Socket Scans & Loggers
│
├── logs/                            # Centralized Chronological Audit Trails
│   ├── system_admin.log             # Health check timestamps & runtime diagnostics
│   └── security_audit.log           # User accounts & open port scan histories
│
├── backups/                         # Compressed Timestamped Archive Repository (.tar.gz)
│   └── linux_dashboard_backup_*.tar.gz
│
└── restore/                         # Isolated, Non-Destructive Recovery Sandboxes
    └── restore_YYYY-MM-DD_*/ 
