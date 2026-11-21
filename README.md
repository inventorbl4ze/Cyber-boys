# CYBERMAX: THE ULTIMATE CITY

A clean rebuild foundation for a mobile-first open-world city life simulator.

## Current status

The branch contains a clean UI preview and initial backend/database planning. It is **not yet a completed multiplayer game**. Login, persistence, admin moderation, multiplayer synchronization, 3D movement, and purchases require server implementation and testing.

## Planned stack

- Babylon.js for 3D rendering, mobile controls and city assets.
- Cloudflare Workers for authoritative game API and authentication.
- Cloudflare D1 for persistent accounts and game data.
- Server-authoritative money, inventory, Premium, bans and ownership.

## Creator account

The reserved creator username is `cybermax`. Do not hard-code the creator password in frontend code or repository history. Set credentials and admin roles securely on the backend.

## Preview

GitHub Pages can serve index.html as a preview. This preview is not a secure login or connected multiplayer build.

## Roadmap

1. Secure authentication and reserved creator identity.
2. D1 schema and API, account state, admin controls.
3. 3D city prototype and mobile driving controls.
4. Multiplayer presence and authoritative state.
5. Vehicles, garages, purchases and property.
6. Missions, activities and Premium lifecycle.
7. testing, deployment and optimization.
