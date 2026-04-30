# Firmware Architecture

## Scope

This project is a documentation-focused cleanup for a Pico W keypad/LED firmware. Runtime behavior remains unchanged from the provided source in `src/main.cpp`.

## Framework and Target

- **Target MCU:** RP2040 (Raspberry Pi Pico W).
- **Programming style:** Arduino-compatible C++.
- **Core dependencies:** `Keypad` library and Arduino GPIO APIs.

## Module-Level Breakdown

### `src/main.cpp`

Single-module firmware containing:

1. **Constants and dimensions**
   - `LEDS = 12`
   - `ROWS = 4`
   - `COLS = 4`

2. **Key map definition**
   - 4x4 matrix mapping keypad characters `1..9,0,A..D,*,#`.

3. **GPIO assignment arrays**
   - `ledPins[12]`
   - `rowPins[4]`
   - `colPins[4]`

4. **Keypad driver instance**
   - `Keypad keypad = Keypad(...)`

5. **`setup()` initialization**
   - Configures all LED pins as outputs.
   - Sets all LED outputs LOW at startup.

6. **`loop()` runtime**
   - Polls keyboard with `getKey()`.
   - Uses `switch` dispatch for command actions.
   - Includes `delay(10)` debounce/scan pacing.

## Behavioral Contract (Unchanged)

- Individual ON commands: `1..8`, `A..D`
- Blue group ON/OFF: `9` / `0`
- Red group ON/OFF: `*` / `#`
- No automatic LED reset on key release (latched behavior).

## Repository Structure Rationale

- `src/`: executable firmware source.
- `include/`: reserved for future headers.
- `docs/`: implementation-independent project docs.
- `diagram.json`: simulator wiring source of truth.
- `CMakeLists.txt`: top-level build metadata note for C/C++ repo convention.

## Portability Guidance

Because current code is Arduino API based, there are two safe paths:

1. Keep Arduino core on Pico W (no logic changes needed).
2. Port to Pico SDK by wrapping/adapting only platform APIs while preserving switch-case command semantics.

## Self-Critique Pass

- **Generated draft:** Confirmed structure and mapping documentation completeness.
- **Review pass improvements:** Added explicit behavioral contract, clarified row/column pitfalls, and separated portability guidance from core logic to avoid accidental rewrites.
