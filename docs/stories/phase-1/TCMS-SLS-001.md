## Story
As a Lead Management Service,  
I want to create leads from multiple enquiry channels  
So that sales operates on a single source of truth.

## Business Context
BRD Section: Enquiry Channels + Sales CRM (Phase-1)

## API Scope
- POST /api/v1/leads

## Acceptance Criteria
- Lead can be created from website, WhatsApp, chatbot, manual entry
- Mobile number is mandatory
- Duplicate leads are detected using mobile/email
- Existing lead ID is returned on duplicate

## Validations & Rules
- Normalize mobile numbers
- Reject invalid formats
- Source must be captured

## Events / Async
- Publish event: LeadCreated

## Audit & Security
- created_by, created_at
- Only authenticated users can create leads
