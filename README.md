![](assets/repo_header_dark_1280x320.png)

# mesh-guides

`freq : quiet · signal : alive`

Community guides for Meshtastic EU868 compliant mesh operation and off-grid node setup.  
Practical, opinionated, built for real hardware in real conditions.

---

## guides

### Meshtastic EU868

| language | technical | beginner |
|----------|-----------|---------|
| 🇵🇹 Portuguese | [meshtastic-technical-guide.md](docs/pt/technical/meshtastic-technical-guide.md) | [meshtastic-beginner-guide.md](docs/pt/user/meshtastic-beginner-guide.md) |
| 🇬🇧 English | [meshtastic-technical-guide.md](docs/en/technical/meshtastic-technical-guide.md) | [meshtastic-beginner-guide.md](docs/en/user/meshtastic-beginner-guide.md) |
| 🇪🇸 Spanish | [meshtastic-technical-guide.md](docs/es/technical/meshtastic-technical-guide.md) | [meshtastic-beginner-guide.md](docs/es/user/meshtastic-beginner-guide.md) |

### Protocol

| language | guide |
|----------|-------|
| 🇵🇹 PT | [handshake-protocol.md](docs/pt/technical/handshake-protocol.md) |
| 🇬🇧 EN | [handshake-protocol.md](docs/en/technical/handshake-protocol.md) |
| 🇪🇸 ES | [handshake-protocol.md](docs/es/technical/handshake-protocol.md) |

---

## node tools

| file | what it does |
|------|-------------|
| [node/node-247.mu](node/node-247.mu) | NomadNet micron page — keeping a Pi node alive 24/7 (systemd + EcoFlow + solar) |
| [node/nodecheck.sh](node/nodecheck.sh) | SSH health-check — uptime · throttle · temp · services · ports · disk |

---

## scope

These guides target operators running Meshtastic in the **EU/UK 868 MHz** band — small community groups, urban and rural meshes, people who want realistic range expectations rather than marketing numbers.

Focus: modem presets · routing roles · hop limits · telemetry · safe spectrum use.

> Not legal advice. Always verify local regulations (e.g. ANACOM in Portugal).

---

## Meshtastic® trademark

Meshtastic® is a registered trademark of Meshtastic LLC.  
These guides are independent, community-maintained documents — not affiliated with or endorsed by Meshtastic LLC.  
For branding use: [meshtastic.org/docs/legal/licensing-and-trademark](https://meshtastic.org/docs/legal/licensing-and-trademark/)

---

## contributions

Issues, corrections and pull requests are welcome — presets, roles, real-world deployment notes, translations within PT/EN/ES.

---

## license

Distributed under the terms in the [`LICENSE`](LICENSE) file.

---

`walk quietly, ₿ut keep the signal alive`  
`₿uilt with love in cooperation with nature`
