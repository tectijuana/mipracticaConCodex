# Firmware Architecture

## Source Layout
- `src/main.cpp`: Complete application logic and hardware pin mapping.
- `docs/wiring.md`: Wiring and electrical mapping reference.
- `diagram.json`: Wokwi schematic source.

## Runtime Flow
1. **Static configuration**
   - Defines keypad matrix (`keys[4][4]`).
   - Defines GPIO arrays for LEDs, keypad rows, keypad columns.
2. **Initialization (`setup`)**
   - Configures all LED GPIOs as outputs.
   - Drives all LEDs LOW (off).
3. **Main loop (`loop`)**
   - Polls keypad via `keypad.getKey()`.
   - If a key is pressed, dispatches action in a `switch` statement.
   - Waits 10 ms between scans (`delay(10)`).

## Module Responsibilities
- **Keypad module (`Keypad` library)**: matrix scanning, debouncing/basic key event retrieval.
- **Application logic (`switch` cases)**: maps key events to LED state writes.
- **GPIO output layer (Arduino API)**: `pinMode`, `digitalWrite` control the LEDs.

## Behavior Contract (Preserved)
- No key press => no LED state changes.
- Numeric keys and letter keys set individual or grouped LEDs exactly as coded.
- No automatic timeout/reset behavior.

## Portability Notes
- Current code is Arduino-framework-native.
- For strict Pico SDK projects, preserve logic and map APIs through wrappers or minimal adaptation while keeping same key-to-LED behavior.
