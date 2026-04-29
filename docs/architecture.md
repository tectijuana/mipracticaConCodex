# Firmware Architecture

## Project Type and Framework

- **Target board:** Raspberry Pi Pico W (RP2040).
- **Firmware style:** Arduino-compatible C++.
- **Main source:** `src/main.cpp`.

## High-Level Runtime Flow

1. **Static configuration (global scope)**
   - Defines keypad keymap (`keys[4][4]`).
   - Defines GPIO arrays for LEDs (`ledPins`), keypad rows (`rowPins`), and columns (`colPins`).
   - Instantiates `Keypad` object.
2. **Initialization (`setup`)**
   - Configures all LED GPIO pins as outputs.
   - Drives all LED pins LOW.
3. **Main control loop (`loop`)**
   - Polls keypad (`keypad.getKey()`).
   - If key exists, dispatches behavior through `switch` cases.
   - Applies a 10ms scan delay.

## Behavioral Mapping

- `1..8`: turn ON corresponding blue LED output.
- `9`: turn ON all blue LED outputs (`ledPins[0..7]`).
- `0`: turn OFF all blue LED outputs (`ledPins[0..7]`).
- `A..D`: turn ON corresponding red LED output.
- `*`: turn ON all red LED outputs (`ledPins[8..11]`).
- `#`: turn OFF all red LED outputs (`ledPins[8..11]`).

## File Responsibilities

- `src/main.cpp`: Complete application logic and pin assignment.
- `docs/wiring.md`: Hardware pin mapping and connection rationale.
- `docs/architecture.md`: System design and runtime behavior documentation.
- `diagram.json`: Wokwi hardware diagram artifact.
- `CMakeLists.txt`: Minimal top-level build metadata/documentation target.

## Self-Critique and Improvement Pass

- **Initial draft check:** Ensured no logic refactor or functional edits were introduced.
- **Improvement pass:** Clarified assumptions (board compatibility, active-high LEDs, pull-up rows), expanded deployment steps, and added explicit behavior contract.

## Extensibility Notes (Non-breaking)

- Add non-blocking timing or event logging without altering key-to-LED behavior.
- Add Wi-Fi telemetry on Pico W only if credentials are externalized (never committed).
- If porting to pure Pico SDK, keep the same state transitions and command semantics.
