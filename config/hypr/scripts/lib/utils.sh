#!/bin/bash

if [[ -z "${HYPR_SCRIPTS}" ]]; then
    source "$(dirname "$0")/env.sh"
fi

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

print_info() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

command_exists() {
    command -v "$1" >/dev/null 2>&1
}

script_exists() {
    [[ -f "$1" && -x "$1" ]]
}

safe_exec() {
    if script_exists "$1"; then
        "$@"
        return $?
    else
        print_warning "Script $1 not found or not executable"
        return 1
    fi
}
