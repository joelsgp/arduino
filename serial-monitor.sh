#!/bin/bash
set -eux
serial_log="serial-log.txt"
serial_output="serial-output.txt"
arduino-cli monitor -p /dev/ttyACM0 --log-file "$serial_log" --log-level warn | tee -a "$serial_output"
