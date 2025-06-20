#!/usr/bin/bash

MONITOR=`gdctl show -m | grep -Po "(?<=Monitor )[a-zA-Z0-9-]+"`
ROTATION="`gdctl show -m | grep -Po "(?<=Transform: ).*$"`"

if [[ "$ROTATION" == "normal" ]]; then
	gdctl set --logical-monitor --primary --monitor "$MONITOR" --transform 90
else
	gdctl set --logical-monitor --primary --monitor "$MONITOR" --transform normal
fi

