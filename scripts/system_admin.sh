#!/bin/bash
LOG_DIR="../logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/system_admin.log"
log_event() { echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" | tee -a "$LOG_FILE"; }
while true; do
    clear
    echo "=========================================================="
    echo " LINUX SYSTEM ADMIN MODULE (Lead: Zubair Aarfa Nisha)     "
    echo " Reg No: 2411021060827                                    "
    echo "=========================================================="
    echo "1. System Overview & Kernel Info"
    echo "2. CPU & Memory Utilization"
    echo "3. Core Services Health Status"
    echo "4. Return to Main Dashboard"
    echo "=========================================================="
    read -p "Select option [1-4]: " ch
    case $ch in
        1) log_event "Checked Overview"; uname -srm; uptime -p ;;
        2) log_event "Checked Resources"; free -h; ps -eo pid,pcpu,pmem,comm --sort=-pcpu | head -n 6 ;;
        3) log_event "Checked Services"; for s in cron ssh; do systemctl is-active "$s" 2>/dev/null || echo "$s check"; done ;;
        4) exit 0 ;;
    esac
    read -p "Press Enter to return..." _
done
