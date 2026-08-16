<div align="center">
  <h1>🏛️ Advanced OS Architecture & System Specifications</h1>
  <p><strong>An Enterprise-Grade Showcase of Academic Research, System Design, and Architectural Schematics.</strong></p>

  <img src="https://img.shields.io/badge/Architecture-System%20Design-blue" alt="Architecture Badge"/>
  <img src="https://img.shields.io/badge/Status-Completed-success" alt="Status Badge"/>
  <img src="https://img.shields.io/badge/Author-Mohamed%20Elsayed-purple" alt="Author Badge"/>
</div>

---

## 📖 Executive Summary

This repository serves as the definitive documentation portfolio for the **Advanced Operating Systems** architecture project. Moving beyond simple codebase documentation, this collection encapsulates high-level system design, rigorous academic research, and complex implementation strategies across multiple computer science disciplines. 

It acts as the architectural blueprint for the functional code deployed in the sister repository: **[OS Process & Synchronization (Core Logic)](https://github.com/mohamed90315/os-process-sync)**.

---

## 🚀 OS Lab Project: Course Tracker

As part of the final Operating Systems Lab evaluation, this repository includes an automated Bash script (`course_tracker.sh`) designed to dynamically parse PDF transcripts and compare them against academic course plans. 

### How it Works
The script utilizes `pdftotext` to extract raw string data from PDF files. It employs advanced regular expressions (`awk`/`grep`) to intelligently identify alphanumeric course codes (e.g., `CS322`) and isolate academic grades, cross-referencing them against the departmental curriculum to generate a final `course_report.txt`.

### Usage Instructions

**1. Install Dependencies**
Ensure you have `poppler-utils` installed to handle PDF parsing:
```bash
# On Ubuntu / WSL
sudo apt-get install poppler-utils
# On macOS
brew install poppler
```

**2. Run the Script**
Execute the shell script and follow the interactive prompts:
```bash
chmod +x course_tracker.sh
./course_tracker.sh
```

**3. Provide Paths**
When prompted, provide the paths to the PDF files located in this repository:
* *Transcript:* `docs/StudentTranscript.pdf`
* *Course Plan:* `assets/Course Plan/CY June 2024.pdf`

---

## 🏗️ Architectural & Academic Modules

The documentation is professionally segmented into specialized modules, reflecting the multi-disciplinary approach required for modern system architecture:

| 🧩 Module Area | 📄 Key Documents & Assets | 🎯 Focus & Objectives |
| :--- | :--- | :--- |
| **System Security & Cryptography** | `CY June 2024.pdf`, `CS June 2024.pdf` | Blueprints for secure system implementation, threat modeling, and cryptographic standards within OS environments. |
| **Software Engineering Paradigms** | `SE March 2024.pdf` | SDLC documentation, agile workflows, and structural engineering principles applied to system software. |
| **Artificial Intelligence Integrations**| `AI March 2024.pdf` | Documentation on integrating heuristic algorithms and AI-driven resource allocation within kernel constraints. |
| **Core OS Specifications** | `OS Lab Project.pdf`, `Mohamed Elsayed.docx` | The foundational requirements, IPC specifications, and synchronization constraint definitions. |

---

## 🖼️ Visual Asset Showcase

System architecture relies heavily on visual modeling. The `assets/` directory houses detailed execution traces, state diagrams, and architectural schematics.

* 📂 **`assets/img_1/`**: Contains execution traces and deadlock resolution models for the Thread Synchronization module.
* 📂 **`assets/img_2/`**: Contains IPC (Inter-Process Communication) state flows and memory allocation visual tests.
* 📂 **`assets/Course Plan/`**: Houses the strict academic timelines and milestone dependencies for the complete system rollout.

---

## 👨‍💻 Academic Pedigree

* **Author:** Mohamed Elsayed
* **ID:** 221010750
* **Discipline:** Advanced Operating Systems & Computer Science

> *This repository is maintained as a professional portfolio demonstrating the bridge between theoretical academic research and rigorous software engineering practices.*
