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
