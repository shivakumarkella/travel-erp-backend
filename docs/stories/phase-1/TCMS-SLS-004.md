## Story
As a Sales Service,
I want to manage lead status transitions
So that lead movement follows defined business rules.

## Business Context
BRD Phase-1 – Lead Lifecycle

## API Scope
- PATCH /api/v1/leads/{leadId}/status

## Acceptance Criteria
- Allowed states: NEW → IN_PROGRESS → QUALIFIED → WON / LOST
- Invalid transitions are rejected
- Status change reason is mandatory

## Validations & Rules
- Lead must exist
- Terminal states cannot be changed

## Events / Async
- Publish event: LeadStatusChanged

## Audit & Security
- status_changed_by, status_changed_at
