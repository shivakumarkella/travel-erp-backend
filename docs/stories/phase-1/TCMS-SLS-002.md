## Story
As a Sales Ownership Service,  
I want to assign leads to sales executives  
So that accountability is clearly defined.

## Business Context
BRD Section: Sales CRM – Lead Assignment

## API Scope
- POST /api/v1/leads/{leadId}/assign

## Acceptance Criteria
- Only sales manager can assign/reassign leads
- Ownership change is logged
- Assignment timestamp is stored

## Validations & Rules
- Lead must exist
- Assignee must be active user

## Events / Async
- Publish event: LeadAssigned

## Audit & Security
- assigned_by, assigned_at
