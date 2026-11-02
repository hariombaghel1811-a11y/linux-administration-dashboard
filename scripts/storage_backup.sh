#!/usr/bin/env bash
# Member 2: Komerla Gowtham Krishna (2411021060231)
set -o pipefail
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd -- "$SCRIPT_DIR/.." && pwd)"
PROJECT_NAME="$(basename -- "$PROJECT_DIR")"
BACKUP_DIR="$PROJECT_DIR/backups"
RESTORE_ROOT="$PROJECT_DIR/restore"
pause() { printf '\nPress Enter to continue...'; read -r _ || true; }
while true; do
    clear
    echo "=========================================================="
    echo " STORAGE & BACKUP MODULE (Member 2: Gowtham Krishna)     "
    echo " Reg No: 2411021060231                                    "
    echo "=========================================================="
    echo "1. Monitor disk storage and alerts"
    echo "2. Create project backup"
    echo "3. List available backups"
    echo "0. Return to Main Dashboard"
    echo "=========================================================="
    read -r -p "Choose an option [0-3]: " choice || break
    case "$choice" in
        1) df -hT -P; pause ;;
        2) mkdir -p "$BACKUP_DIR"; stamp="$(date '+%Y-%m-%d_%H-%M-%S')"; archive="$BACKUP_DIR/${PROJECT_NAME}_backup_${stamp}.tar.gz"; tar -czf "$archive" --exclude='./backups' --exclude='./restore' -C "$PROJECT_DIR" .; ls -lh "$archive"; pause ;;
        3) ls -lh "$BACKUP_DIR"/*.tar.gz 2>/dev/null || echo "No backups found."; pause ;;
        0) exit 0 ;;
    esac
done
