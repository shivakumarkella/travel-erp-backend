## Story
As a Reminder Engine,  
I want to trigger follow-up reminders for leads  
So that no lead is missed or delayed.

## Business Context
BRD Section: Follow-up Discipline

## API Scope
- POST /api/v1/followups
- GET /api/v1/followups/overdue

## Acceptance Criteria
- Follow-ups can be scheduled (6h, 16h, 30h, custom)
- Overdue follow-ups are visible
- Escalation happens after SLA breach

## Validations & Rules
- Follow-up must be linked to a lead
- Completion timestamp mandatory

## Events / Async
- Publish event: FollowUpOverdue

## Audit & Security
- Reminder creation and completion tracked
