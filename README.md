# FameTech DevOps Lab Series – Bash Automation Projects

> This repository contains a curated series of advanced Bash scripting labs designed during my role as a **DevOps Engineer** at **FameTech NYC**, simulating real-world infrastructure automation and monitoring workflows across staging environments.

Each lab is structured around:

- Real-world DevOps tickets
- Cross-platform Linux support (Ubuntu, CentOS)
- Automation-first principles (idempotency, logging, headless execution)
- Portable CLI tooling (no external dependencies)

> These projects were part of my sprint-based deliverables while automating QA and staging infrastructure for FameTech. All experiences are verifiable upon request.

---

## Lab Series Overview

| Lab ID       | Title                                          | Key Focus                             | Difficulty              |
| ------------ | ---------------------------------------------- | ------------------------------------- | ----------------------- |
| BASH-PRO-001 | Bash User & Remote Job Automation Toolkit      | Bulk user creation, SSH/SCP execution | Intermediate → Advanced |
| BASH-PRO-002 | OS-Aware Apache Monitoring & Auto-Heal Toolkit | Apache status monitor + auto-recovery | Intermediate → Advanced |

---

## Technologies & Tools

- `bash`, `ssh`, `scp`, `cron`
- Linux CLI (Ubuntu & CentOS)
- Vagrant-based VM provisioning
- Logging to `/var/log`
- Modular, reusable `.sh` scripts

---

## Folder Structure

```

bash-pro-lab-series/
├── bash-pro-lab-001/           # BASH-PRO-001 – User & Remote Job Automation Toolkit
│   └── README.md
├── bash-pro-lab-002/           # BASH-PRO-002 – Apache Monitoring & Auto-Heal Toolkit
│   └── README.md
├── screenshots/                # Consolidated screenshot folder (if shared)
├── LICENSE                     # Optional license
└── README.md                   # Root overview (this file)

```

---

## Usage Guide

Each lab has its own README file with:

- Real-world DevOps simulation scenario
- Objectives & toolchain
- Folder structure with script breakdown
- Validation checklist
- Interview-style Q&A
- Security & production tips
- FameTech backstory and sprint reference

To run any lab:

1. Clone this repo
2. Navigate to the desired lab folder
3. Follow pre-deployment checklist
4. Execute the `00_precheck.sh` or install script
5. Validate with logs, screenshots, and checklist

---

## Evidence of Completion

Each lab includes screenshots showing:

- Script execution
- Logs & monitoring
- Cron validation
- Multi-host provisioning outcomes

---

## FameTech Simulation Story

These labs were completed while simulating a project-based DevOps role at **FameTech NYC**, an enterprise technology agency.  
Each script and deliverable is structured to reflect real DevOps workflows, including:

- Infrastructure onboarding (users, SSH access)
- Monitoring and recovery (Apache)
- Multi-host, headless automation

---

## Contact

**Engineer**: Sheikh Ahmed  
**Role**: DevOps Engineer – Infrastructure & Monitoring  
**Location**: NYC  
**Verification**: Project history verifiable via FameTech references

---

![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
