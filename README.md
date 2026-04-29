# Raspberry Pi Pico W Keypad-to-LED Controller

A Raspberry Pi Pico W (RP2040) firmware project that reads a 4x4 matrix keypad and controls 12 LEDs using Arduino-style C++ logic.

> **Scope of this repository refresh:** Documentation and project organization were improved while preserving the original runtime behavior in `src/main.cpp`.

## Repository Structure

```text
.
├── CMakeLists.txt
├── diagram.json
├── include/
│   └── .gitkeep
├── src/
│   └── main.cpp
└── docs/
    ├── architecture.md
    └── wiring.md
```

## Project Features

- 4x4 matrix keypad input via `Keypad` library.
- 12 independent LED outputs.
- Group actions:
  - `9`: turn ON LEDs 1..8
  - `0`: turn OFF LEDs 1..8
  - `*`: turn ON LEDs A..D
  - `#`: turn OFF LEDs A..D
- Direct actions:
  - `1..8`: turn ON individual blue LEDs
  - `A..D`: turn ON individual red LEDs

## Components List (derived from `diagram.json` + source mapping)

- 1x Raspberry Pi Pico / Pico W-compatible RP2040 board footprint
- 1x 4x4 membrane keypad
- 12x LEDs (8 blue, 4 red)
- 12x 220Ω resistors (LED current limiting)
- 4x 1kΩ resistors (keypad row pull-up network)
- Jumper wires and USB power/programming cable

## GPIO Pin Summary

- **Keypad columns:** GP16, GP17, GP18, GP19
- **Keypad rows:** GP26, GP22, GP21, GP20
- **LED outputs:** GP11, GP10, GP9, GP8, GP7, GP6, GP5, GP4, GP3, GP2, GP28, GP27

For the full table and physical signal mapping, see `docs/wiring.md`.

## How to Run in Wokwi

1. Create/open a Raspberry Pi Pico project in Wokwi.
2. Replace Wokwi `diagram.json` with this repo's `diagram.json`.
3. Replace the sketch source with `src/main.cpp`.
4. Add/install library **Keypad** in Wokwi's library manager.
5. Start simulation and press keypad keys to verify LED behavior.

## How to Run on Real Hardware (Pico W)

### Arduino IDE path (recommended for this source as-is)

1. Install **Arduino IDE 2.x**.
2. Install the RP2040 board package (Earle Philhower core).
3. Install library: **Keypad** (Mark Stanley / Alexander Brevig).
4. Open/use `src/main.cpp` as your sketch content.
5. Select board: **Raspberry Pi Pico W**.
6. Enter BOOTSEL mode if needed and upload.

### Pico SDK path (note)

This code is Arduino-API-based (`setup`, `loop`, `digitalWrite`, `Keypad.h`).
If you use pure Pico SDK, preserve logic and add a thin adaptation layer.

## Wi-Fi & Secrets

- Pico W Wi-Fi hardware is **not used** in this firmware.
- No SSID/password or cloud credentials are required.
- Do not hardcode credentials if you later extend this project with networking.

## Behavior Preservation Statement

`src/main.cpp` intentionally retains the provided control logic without behavioral changes.
