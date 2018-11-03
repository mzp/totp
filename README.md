# :timer_clock: TOTP
Time-based One-time password generator for study.

Not intend to use in production.

## :wrench: Build/Run

Build:
```sh
swift build
```

Usage:
```sh
swift run <secret key>
```

Secret key is obtained by decoding QR code image.

## :eyes: References
 - [RFC 4226](https://tools.ietf.org/html/rfc4226)
 - [RFC 6238](https://tools.ietf.org/html/rfc6238)
 - [Time-based One-time Password algorithm - WIkipedia](https://en.wikipedia.org/wiki/Time-based_One-time_Password_algorithm)
 - [HMAC-based One-time Password algorithm - Wikipedia](https://en.wikipedia.org/wiki/HMAC-based_One-time_Password_algorithm)
