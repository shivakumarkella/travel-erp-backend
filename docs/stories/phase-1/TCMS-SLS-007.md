## Story
As a Booking Service,
I want to create a booking from a qualified lead
So that trip planning can begin.

## API Scope
- POST /api/v1/bookings

## Acceptance Criteria
- Lead must be QUALIFIED
- Booking references leadId

## Events / Async
- Publish event: BookingCreated
