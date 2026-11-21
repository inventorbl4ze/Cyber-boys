-- Initial CYBERMAX database design (Cloudflare D1 / SQLite)
CREATE TABLE IF NOT EXISTS players (
 id TEXT PRIMARY KEY, username TEXT NOT NULL UNIQUE COLLATE NOCASE,
 password_hash TEXT NOT NULL, role TEXT NOT NULL DEFAULT 'player',
 status TEXT NOT NULL DEFAULT 'active', balance INTEGER NOT NULL DEFAULT 50000,
 premium_expires_at INTEGER, daily_reward_claimed_at INTEGER,
 created_at INTEGER NOT NULL DEFAULT (unixepoch())
);
CREATE TABLE IF NOT EXISTS player_vehicles (
 id TEXT PRIMARY KEY, player_id TEXT NOT NULL REFERENCES players(id),
 vehicle_key TEXT NOT NULL, purchased_at INTEGER NOT NULL DEFAULT (unixepoch())
);
CREATE TABLE IF NOT EXISTS properties (
 id TEXT PRIMARY KEY, player_id TEXT NOT NULL REFERENCES players(id),
 property_key TEXT NOT NULL, purchased_at INTEGER NOT NULL DEFAULT (unixepoch())
);
CREATE TABLE IF NOT EXISTS moderation_log (
 id TEXT PRIMARY KEY, admin_id TEXT NOT NULL, player_id TEXT NOT NULL,
 action TEXT NOT NULL, reason TEXT, created_at INTEGER NOT NULL DEFAULT (unixepoch())
);
CREATE TABLE IF NOT EXISTS mission_progress (
 player_id TEXT NOT NULL REFERENCES players(id), mission_key TEXT NOT NULL,
 state TEXT NOT NULL DEFAULT 'available', PRIMARY KEY(player_id,mission_key)
);
