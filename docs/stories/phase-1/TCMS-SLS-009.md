## Story
As a Booking Service,
I want to confirm bookings
So that sales data becomes immutable.

## API Scope
- POST /api/v1/bookings/{bookingId}/confirm

## Acceptance Criteria
- Payment status present
- Confirmed bookings are read-only

## Events / Async
- Publish event: BookingConfirmed
