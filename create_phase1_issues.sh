#!/bin/bash

echo "Creating Phase-1 Sales backend stories..."

gh issue create \
  --title "[Sales] Multi-channel Lead Creation" \
  --body-file docs/stories/phase-1/TCMS-SLS-001.md \
  --label "story,phase-1,sales-service"

gh issue create \
  --title "[Sales] Lead Assignment & Ownership" \
  --body-file docs/stories/phase-1/TCMS-SLS-002.md \
  --label "story,phase-1,sales-service"

gh issue create \
  --title "[Sales] Follow-up Reminder Engine" \
  --body-file docs/stories/phase-1/TCMS-SLS-003.md \
  --label "story,phase-1,sales-service"

echo "Phase-1 Sales stories created successfully."
declare -A STORIES=(
  ["[Sales] Lead Status Lifecycle"]="TCMS-SLS-004.md"
  ["[Sales] Lead Qualification"]="TCMS-SLS-005.md"
  ["[Sales] Lead Closure (Lost)"]="TCMS-SLS-006.md"
  ["[Sales] Create Booking from Lead"]="TCMS-SLS-007.md"
  ["[Sales] Booking Validation Rules"]="TCMS-SLS-008.md"
  ["[Sales] Booking Confirmation"]="TCMS-SLS-009.md"
  ["[Sales] Payment Status Capture"]="TCMS-SLS-010.md"
  ["[Sales] Discount Handling"]="TCMS-SLS-011.md"
  ["[Sales] Sales Notes"]="TCMS-SLS-012.md"
  ["[Sales] Sales to Ops Handover"]="TCMS-SLS-013.md"
  ["[Sales] Duplicate Booking Prevention"]="TCMS-SLS-014.md"
  ["[Sales] Sales Metrics Hooks"]="TCMS-SLS-015.md"
)

for TITLE in "${!STORIES[@]}"; do
  FILE="docs/stories/phase-1/${STORIES[$TITLE]}"
  gh issue create \
    --title "$TITLE" \
    --body-file "$FILE" \
    --label "story,phase-1,sales-service"
done
