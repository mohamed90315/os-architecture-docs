#!/bin/bash

# ==============================================================================
# OS Lab Project: Course Tracker
# ==============================================================================

echo "---------------------------------------------------"
echo "        OS Lab Project: Course Tracker             "
echo "---------------------------------------------------"

# 1. Prompts the user for paths
read -p "Enter the absolute or relative path to your Transcript PDF: " transcript_pdf
read -p "Enter the absolute or relative path to the Department Course Plan PDF: " plan_pdf

# 2. Assure the user implicitly
echo ""
echo "Note: You are entirely responsible for obtaining and providing accurate and up-to-date transcripts and course plans."
echo "Processing files..."

# Check if files exist
if [ ! -f "$transcript_pdf" ]; then
    echo "Error: Transcript PDF not found at $transcript_pdf"
    exit 1
fi

if [ ! -f "$plan_pdf" ]; then
    echo "Error: Course Plan PDF not found at $plan_pdf"
    exit 1
fi

# Check for pdftotext dependency
if ! command -v pdftotext &> /dev/null; then
    echo "Error: 'pdftotext' is not installed."
    echo "Please install poppler-utils to use this script."
    echo "On Ubuntu/WSL: sudo apt install poppler-utils"
    echo "On MacOS: brew install poppler"
    exit 1
fi

# Convert PDFs to text securely using temporary files
tmp_transcript=$(mktemp)
tmp_plan=$(mktemp)

pdftotext "$transcript_pdf" "$tmp_transcript"
pdftotext "$plan_pdf" "$tmp_plan"

output_file="course_report.txt"
> "$output_file" # clear existing file

echo "=== Completed Courses ===" >> "$output_file"

# 3. Extract course information (code and grade) from transcript
# We look for a pattern like CS322 or MATH 101, and grades like A, B+, C-, etc.
grep -E '[A-Z]{2,3}[ ]?[0-9]{3,4}' "$tmp_transcript" | while read -r line; do
    # Extract the course code
    code=$(echo "$line" | grep -oE '[A-Z]{2,3}[ ]?[0-9]{3,4}')
    
    # Extract the grade (Looks for standalone A, B+, C-, etc.)
    grade=$(echo "$line" | grep -oE '\b[A-DF][+-]?\b' | tail -n 1)
    
    if [ ! -z "$code" ] && [ ! -z "$grade" ]; then
        # Format the course code to ensure there's no space (e.g., CS 322 -> CS322)
        formatted_code=$(echo "$code" | tr -d ' ')
        echo "$formatted_code - Grade: $grade" >> "$output_file"
    fi
done

echo "" >> "$output_file"
echo "=== Courses to be Taken ===" >> "$output_file"

# 4 & 5. Extract course codes from plan and output missing ones
grep -oE '[A-Z]{2,3}[ ]?[0-9]{3,4}' "$tmp_plan" | sort | uniq | while read -r required_code; do
    formatted_required=$(echo "$required_code" | tr -d ' ')
    
    # Check if the required code was already processed in the output file
    if ! grep -q "$formatted_required" "$output_file"; then
        echo "$formatted_required" >> "$output_file"
    fi
done

# Cleanup temporary files
rm "$tmp_transcript"
rm "$tmp_plan"

echo "Success! Report generated at: $output_file"
