#!/bin/bash
while true; do
    clear
    echo "=========================================================="
    echo "       LINUX ADMINISTRATION DASHBOARD - GROUP PROJECT     "
    echo "=========================================================="
    echo "1. System Administration       [Zubair Aarfa Nisha]"
    echo "2. Storage & Backup Manager    [Komerla Gowtham Krishna]"
    echo "3. Automation & Security       [Hariom Baghel]"
    echo "4. System Quick Diagnostics"
    echo "5. Exit Dashboard"
    echo "=========================================================="
    read -p "Select Module [1-5]: " choice
    case $choice in
        1) bash scripts/system_admin.sh ;;
        2) bash scripts/storage_backup.sh ;;
        3) bash scripts/automation_security.sh ;;
        4) echo "--- Diagnostics ---"; uptime; df -h /; read -p "Press Enter..." _ ;;
        5) exit 0 ;;
        *) echo "Invalid choice!"; sleep 1 ;;
    esac
done
