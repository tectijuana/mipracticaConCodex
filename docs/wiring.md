# Wiring and GPIO Mapping

## Assumptions and Notes
- The provided logic uses GPIO numbers directly via Arduino API.
- The Wokwi diagram uses `wokwi-pi-pico` part, which is pin-compatible for GPIO mapping with Pico W in this project context.
- LEDs are active-high: GPIO HIGH drives LED anode through 220Ω resistor; cathodes are tied to GND.

## GPIO Mapping Table

| Function | Signal | Pico GPIO |
|---|---|---:|
| Keypad Column 1 | C1 | GP19 |
| Keypad Column 2 | C2 | GP18 |
| Keypad Column 3 | C3 | GP17 |
| Keypad Column 4 | C4 | GP16 |
| Keypad Row 1 | R1 | GP26 |
| Keypad Row 2 | R2 | GP22 |
| Keypad Row 3 | R3 | GP21 |
| Keypad Row 4 | R4 | GP20 |
| LED 1 (label "1") | ledPins[0] | GP11 |
| LED 2 (label "2") | ledPins[1] | GP10 |
| LED 3 (label "3") | ledPins[2] | GP9 |
| LED 4 (label "4") | ledPins[3] | GP8 |
| LED 5 (label "5") | ledPins[4] | GP7 |
| LED 6 (label "6") | ledPins[5] | GP6 |
| LED 7 (label "7") | ledPins[6] | GP5 |
| LED 8 (label "8") | ledPins[7] | GP4 |
| LED A | ledPins[8] | GP3 |
| LED B | ledPins[9] | GP2 |
| LED C | ledPins[10] | GP28 |
| LED D | ledPins[11] | GP27 |

## Passive Components
- LED resistors (`r1..r12`): 220Ω each.
- Keypad row pull-up network (`rp1..rp4`): 1kΩ each tied to 3V3.

## Power/Ground
- All LED cathodes connect to Pico GND.
- Keypad pull-up resistor chain connects to Pico 3V3.

## Quick Validation Checklist
1. Press `1..8` and confirm corresponding blue LEDs latch ON.
2. Press `9` to turn ON LEDs 1..8, `0` to turn them OFF.
3. Press `A..D` to turn ON corresponding red LEDs.
4. Press `*` to turn ON A..D together; `#` to turn them OFF.
