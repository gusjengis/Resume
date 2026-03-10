#!/usr/bin/env bash
set -e

mkdir -p out

typst watch src/resume.typ out/resume.pdf --font-path fonts --ignore-system-fonts --input rust=false &
PID1=$!

typst watch src/resume.typ out/resume-rust.pdf --font-path fonts --ignore-system-fonts --input rust=true > /dev/null 2>&1 &
PID2=$!

typst watch src/resume.typ out/resume.png --font-path fonts --ignore-system-fonts --input rust=false > /dev/null 2>&1 &
PID3=$!

typst watch src/resume.typ out/resume-rust.png  --font-path fonts --ignore-system-fonts --input rust=true > /dev/null 2>&1 &
PID4=$!

typst watch src/BB_resume.typ out/BB_resume.pdf --font-path fonts --ignore-system-fonts &
PID5=$!

trap "kill $PID1 $PID2 $PID3 $PID4 $PID5" SIGINT SIGTERM
wait
