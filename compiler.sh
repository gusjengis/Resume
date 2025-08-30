#!/usr/bin/env bash
set -e

mkdir -p out

typst watch src/resume.typ out/resume.pdf  --input rust=false &
PID1=$!

typst watch src/resume.typ out/resume-rust.pdf --input rust=true > /dev/null 2>&1 &
PID2=$!

typst watch src/resume.typ out/resume.png --input rust=false > /dev/null 2>&1 &
PID3=$!

typst watch src/resume.typ out/resume-rust.png --input rust=true > /dev/null 2>&1 &
PID4=$!

trap "kill $PID1 $PID2 $PID3 $PID4" SIGINT SIGTERM
wait
