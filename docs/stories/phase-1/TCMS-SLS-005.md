## Story
As a Sales Service,
I want to qualify leads
So that only valid leads move to booking.

## API Scope
- POST /api/v1/leads/{leadId}/qualify

## Acceptance Criteria
- Qualification checklist enforced
- Only qualified leads can convert to booking

## Events / Async
- Publish event: LeadQualified
