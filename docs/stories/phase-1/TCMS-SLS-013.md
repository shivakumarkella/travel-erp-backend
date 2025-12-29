## Story
As a Sales Service,
I want to hand over confirmed bookings to Ops
So that execution can start.

## API Scope
- POST /api/v1/bookings/{bookingId}/handover

## Events / Async
- Publish event: SalesHandoverCompleted
