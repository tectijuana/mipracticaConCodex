# Wiring and GPIO Mapping

This document describes electrical connections extracted from `diagram.json` and aligned with `src/main.cpp` arrays.

## Assumptions and Notes

- Firmware uses RP2040 GPIO numbering (`GPx`) via Arduino APIs.
- Wokwi uses `wokwi-pi-pico`; pin mapping is compatible with Pico W GPIO for this design.
- LEDs are wired active-high through 220Ω resistors.
- Keypad rows are additionally tied to 3V3 through 1k pull-ups (`rp1..rp4`) in the provided diagram.

## GPIO Pin Mapping Table

| Function Group | Logical Signal | Firmware Reference | Pico W Pin |
|---|---|---|---|
| Keypad | C1 | `colPins[0]` | GP19 |
| Keypad | C2 | `colPins[1]` | GP18 |
| Keypad | C3 | `colPins[2]` | GP17 |
| Keypad | C4 | `colPins[3]` | GP16 |
| Keypad | R1 | `rowPins[0]` | GP26 |
| Keypad | R2 | `rowPins[1]` | GP22 |
| Keypad | R3 | `rowPins[2]` | GP21 |
| Keypad | R4 | `rowPins[3]` | GP20 |
| Blue LED 1 | LED "1" | `ledPins[0]` | GP11 |
| Blue LED 2 | LED "2" | `ledPins[1]` | GP10 |
| Blue LED 3 | LED "3" | `ledPins[2]` | GP9 |
| Blue LED 4 | LED "4" | `ledPins[3]` | GP8 |
| Blue LED 5 | LED "5" | `ledPins[4]` | GP7 |
| Blue LED 6 | LED "6" | `ledPins[5]` | GP6 |
| Blue LED 7 | LED "7" | `ledPins[6]` | GP5 |
| Blue LED 8 | LED "8" | `ledPins[7]` | GP4 |
| Red LED A | LED "A" | `ledPins[8]` | GP3 |
| Red LED B | LED "B" | `ledPins[9]` | GP2 |
| Red LED C | LED "C" | `ledPins[10]` | GP28 |
| Red LED D | LED "D" | `ledPins[11]` | GP27 |

## Power and Passive Network

- `r1..r12` (220Ω): one resistor per LED anode path.
- LED cathodes are tied to Pico GND net.
- `rp1..rp4` (1kΩ): pull-up network from keypad row lines to 3V3.

## Connection Sanity Checklist

1. Common GND must be shared by Pico and all LEDs.
2. Keypad pins must match row/column order above.
3. Do not swap GP27/GP28 (used by red LEDs D/C respectively in firmware arrays).
4. Keep LED resistors in series (never direct GPIO-to-LED without resistor).

## Functional Verification Steps

- Press `1`..`8` and verify matching blue LED latches ON.
- Press `9` then `0` to batch ON/OFF blue LED bank.
- Press `A`..`D` and verify matching red LED latches ON.
- Press `*` then `#` to batch ON/OFF red LED bank.

If behavior differs, inspect keypad row/column ordering first.
