# Raspberry Pi Pico W - 4x4 Keypad to 12-LED Controller

## Overview
This repository documents and organizes a Raspberry Pi Pico W project where a 4x4 matrix keypad drives 12 LEDs. The firmware is preserved with its original control logic (Arduino-style C++), and the repository adds clean structure and deployment documentation for both Wokwi simulation and real hardware.

## Repository Structure

```text
.
├── CMakeLists.txt
├── diagram.json
├── src/
│   └── main.cpp
├── include/
└── docs/
    ├── architecture.md
    └── wiring.md
```

## Features
- 4x4 keypad scanning using `Keypad` library.
- 12 individually controlled LEDs.
- Group controls:
  - `9`: turn on LEDs 1..8
  - `0`: turn off LEDs 1..8
  - `*`: turn on LEDs A..D
  - `#`: turn off LEDs A..D
- Single-key controls for `1..8` and `A..D`.

## Components (from Wokwi diagram)
- 1x Raspberry Pi Pico / Pico W (RP2040 form factor)
- 1x 4x4 membrane keypad
- 12x LEDs (8 blue + 4 red)
- 12x 220Ω resistors (LED current limiting)
- 4x 1kΩ resistors (keypad row pull-up network to 3V3)
- Hookup wires

## GPIO Summary
See full mapping in `docs/wiring.md`.
- Keypad columns: GP16, GP17, GP18, GP19
- Keypad rows: GP26, GP22, GP21, GP20
- LEDs: GP11, GP10, GP9, GP8, GP7, GP6, GP5, GP4, GP3, GP2, GP28, GP27

## Build / Flash

### Option A: Wokwi (quickest)
1. Create a new RP2040 project in Wokwi.
2. Paste `diagram.json` into the diagram file.
3. Paste `src/main.cpp` into the firmware file.
4. Add Keypad library in Wokwi libraries panel.
5. Start simulation and press keypad buttons.

### Option B: Real Pico W (Arduino framework)
1. Install Arduino IDE 2.x.
2. Add RP2040 boards package (Earle Philhower core).
3. Install library: `Keypad` by Mark Stanley/Alexander Brevig.
4. Open `src/main.cpp` as sketch content.
5. Select board: **Raspberry Pi Pico W**.
6. Put Pico W in BOOTSEL mode and upload.

### Option C: Pico SDK users
This code is Arduino-API based (`setup()`/`loop()`, `digitalWrite`, `Keypad.h`). If using Pico SDK directly, keep the same logic but add thin compatibility wrappers/framework integration.

## Wi-Fi Note
Pico W wireless hardware is not used by this firmware. No credentials are required.

## Behavior Preservation
The control logic in `src/main.cpp` is intentionally unchanged from the provided source.
