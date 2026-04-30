# Raspberry Pi Pico W Keypad-to-LED Controller

Firmware and hardware documentation for a Raspberry Pi Pico W project that reads a 4x4 matrix keypad and controls 12 LEDs.

> **Important:** The firmware logic in `src/main.cpp` is preserved as provided (no behavior changes).

## 1) Repository Structure (Pico W, C/C++)

```text
.
├── CMakeLists.txt
├── diagram.json
├── include/
│   └── .gitkeep
├── src/
│   └── main.cpp
├── docs/
│   ├── architecture.md
│   └── wiring.md
└── README.md
```

This layout follows a clean Pico SDK/embedded C++ organization (`src`, `include`, `docs`) while keeping Arduino-style source compatibility.

## 2) Project Overview

- **MCU:** RP2040 (Raspberry Pi Pico W).
- **Input:** 4x4 membrane keypad.
- **Output:** 12 GPIO-driven LEDs (8 blue + 4 red).
- **Framework style:** Arduino API (`setup()`, `loop()`, `digitalWrite()`, `Keypad.h`).
- **Primary goal:** Key press events latch LEDs ON/OFF by command groups.

## 3) Features and Key Behavior

- `1`..`8`: Turn ON matching blue LED.
- `9`: Turn ON all blue LEDs (`1..8`).
- `0`: Turn OFF all blue LEDs (`1..8`).
- `A`..`D`: Turn ON matching red LED.
- `*`: Turn ON all red LEDs (`A..D`).
- `#`: Turn OFF all red LEDs (`A..D`).

## 4) Components List (from `diagram.json`)

- 1x Raspberry Pi Pico / Pico W board footprint (`wokwi-pi-pico` in simulation)
- 1x 4x4 membrane keypad
- 12x LEDs (`led1..led12`)
- 12x 220Ω resistors (`r1..r12`) for LED current limiting
- 4x 1kΩ resistors (`rp1..rp4`) as keypad row pull-ups to 3V3
- Jumper wiring + USB cable

## 5) Quick GPIO Summary

- **Keypad columns:** GP16, GP17, GP18, GP19
- **Keypad rows:** GP26, GP22, GP21, GP20
- **LEDs:** GP11, GP10, GP9, GP8, GP7, GP6, GP5, GP4, GP3, GP2, GP28, GP27

See full mapping in [`docs/wiring.md`](docs/wiring.md).

## 6) Run in Wokwi

1. Create/open a Raspberry Pi Pico project in Wokwi.
2. Replace the project `diagram.json` with this repository's `diagram.json`.
3. Copy `src/main.cpp` into the sketch file.
4. Ensure library **Keypad** is enabled in Wokwi.
5. Start simulation and press keypad keys to verify LED behavior.

## 7) Run on Real Pico W Hardware

### Option A: Arduino IDE (recommended for this source)

1. Install **Arduino IDE 2.x**.
2. Install RP2040 core (Earle Philhower package).
3. Install library **Keypad**.
4. Open/upload firmware equivalent to `src/main.cpp`.
5. Select board **Raspberry Pi Pico W** and the correct USB port.
6. If needed, hold **BOOTSEL** while connecting USB, then upload.

### Option B: Pico SDK project shell

`CMakeLists.txt` is included for repository organization, but current logic is Arduino-API based.
To build with pure Pico SDK, keep business logic unchanged and adapt only framework glue.

## 8) Wi-Fi and Credential Safety

- Pico W wireless hardware is **not used** by current firmware.
- No SSID/password is needed.
- If Wi-Fi is added later, use external config (e.g., ignored local header/env) and never commit secrets.

## 9) Non-Behavioral Documentation Scope

This repository refresh is documentation-focused:
- Clarified architecture.
- Added explicit wiring and GPIO tables.
- Preserved original logic in `src/main.cpp`.
