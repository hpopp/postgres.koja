# Changelog

## [0.1.0] - 2026-07-15

Initial release.

- Connect to PostgreSQL over TCP with trust, cleartext password, or SCRAM-SHA-256 authentication.
- Run plain SQL with `Connection.query` via the simple query protocol.
- Run parameterized SQL with `Connection.execute` (`$1`-style text parameters, `Option.None` for NULL) via the extended query protocol.
- Server errors surface as structured values with severity, SQLSTATE code, and message.
