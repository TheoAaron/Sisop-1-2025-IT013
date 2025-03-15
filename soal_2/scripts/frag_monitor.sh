#!/bin/bash

watch -n 1 "free -m | awk '/Mem/ {printf \"RAM Usage: %.2f%%\\n\", \$3/\$2 * 100.0}'"
