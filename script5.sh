#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use: " TOOL
read -p "2. What does freedom mean to you? " FREEDOM
read -p "3. What would you build and share? " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "On $DATE, I believe open source is about $FREEDOM." > $OUTPUT
echo "Tools like $TOOL show how collaboration drives innovation." >> $OUTPUT
echo "In the future, I want to build $BUILD and share it freely." >> $OUTPUT

echo "Manifesto saved to $OUTPUT"
cat $OUTPUT