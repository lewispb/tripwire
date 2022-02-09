# TripWire

TripWire is an open source Ruby on Rails application to help you plan your next trip.

It's under development and you're welcome to contribute.

## Desired Features

- User Authentication
- Trip Management
  - Lists
    - Packing List
    - Document List (Travel and COVID documents)
    - Todo List
    - Activity Lists
  - Travel Details
    - Air, Train, Bus, Car

## Development Philosophy

- Vanilla Ruby on Rails only
- Modern asset stack (Propshaft and Importmap)
- HTML Over The Wire (minimal client side JS)
- Minimal external dependencies - utility gems are OK, full-stack gems (e.g. Devise) are not
- Good, pragmatic test coverage using minitest


## Development

```
bin/rails db:setup
foreman start -f Procfile.dev
```
