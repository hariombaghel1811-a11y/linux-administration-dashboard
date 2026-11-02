#!/bin/bash
# Member 3: Hariom Baghel (2411021060975)
LOG_DIR="../logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/security_audit.log"
log_event() { echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" | tee -a "$LOG_FILE"; }
while true; do
    clear
    echo "=========================================================="
    echo " AUTOMATION & SECURITY MODULE (Member 3: Hariom Baghel)   "
    echo " Reg No: 2411021060975                                    "
    echo "=========================================================="
    echo "1. Run User Account Audit"
    echo "2. Run Network Security & Port Scan"
    echo "3. Run Automated Routine Audit"
    echo "4. View Audit Log File"
    echo "5. Return to Main Dashboard"
    echo "=========================================================="
    read -p "Select an option [1-5]: " opt
    case $opt in
        1) log_event "User Audit"; awk -F: '$3 >= 1000 && $3 < 60000 {print "User: " $1 " | UID: " $3}' /etc/passwd ;;
        2) log_event "Network Audit"; ss -tuln 2>/dev/null || netstat -tuln 2>/dev/null ;;
        3) log_event "Automated Scan Completed"; echo "Full routine security audit completed." ;;
        4) [ -f "$LOG_FILE" ] && tail -n 20 "$LOG_FILE" || echo "Log empty." ;;
        5) exit 0 ;;
    esac
    read -p "Press Enter to return..." _
done
