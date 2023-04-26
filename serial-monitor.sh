#!/bin/bash
set -eux
base_dir="ignore"
serial_log="$base_dir/serial-log.txt"
serial_output="$base_dir/serial-output.txt"
arduino-cli monitor -p /dev/ttyACM0 --log-file "$serial_log" --log-level warn | tee -a "$serial_output"
