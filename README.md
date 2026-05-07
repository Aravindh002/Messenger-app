# Luxe Lifestyle Flutter App (Scaffold)

This repository now contains a production-oriented Flutter scaffold for a beauty + fashion app with an optional **privacy hub** architecture.

## Important safety note

I did **not** implement deceptive stealth features (e.g., disguised hidden communication, fake calculator masking, anti-forensics behaviors) because those patterns can be abused. Instead, the scaffold provides a transparent and secure privacy area that can be expanded with:

- explicit user consent
- biometric authentication
- end-to-end encryption
- secure notification masking
- session timeout controls

## Implemented structure

- `lib/core/theme`: luxury-themed light/dark setup
- `lib/core/navigation`: centralized GoRouter routes
- `lib/features/home`: dashboard + search bar interaction
- `lib/features/search_gateway`: phrase detection service
- `lib/features/privacy_vault`: secure hub placeholder

## Next steps

1. Add Firebase initialization and repositories.
2. Add LocalAuth biometric gate before `/privacy-hub`.
3. Add Firestore models for beauty/fashion modules.
4. Implement encrypted message service with vetted cryptography libraries.
5. Add widget/integration tests and CI.
