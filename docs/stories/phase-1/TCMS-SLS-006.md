## Story
As a Sales Service,
I want to mark leads as lost
So that pipeline metrics remain accurate.

## API Scope
- POST /api/v1/leads/{leadId}/close-lost

## Acceptance Criteria
- Loss reason mandatory
- Closed leads are immutable

## Events / Async
- Publish event: LeadClosedLost
