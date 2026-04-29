# Wiring and GPIO Mapping

This document explains the hardware wiring for the Raspberry Pi Pico W keypad-to-LED project.

## Assumptions

- The provided firmware uses Arduino GPIO numbering (`GPx`).
- The Wokwi board entry is `wokwi-pi-pico`, which is GPIO-compatible with Pico W for this use case.
- LEDs are wired as **active-high** outputs: `GPIO -> 220Ω resistor -> LED anode`, with LED cathode to GND.

## GPIO Mapping Table

| Subsystem | Signal | Firmware Array Index | Pico W GPIO |
|---|---|---:|---:|
| Keypad | C1 | `colPins[0]` | GP19 |
| Keypad | C2 | `colPins[1]` | GP18 |
| Keypad | C3 | `colPins[2]` | GP17 |
| Keypad | C4 | `colPins[3]` | GP16 |
| Keypad | R1 | `rowPins[0]` | GP26 |
| Keypad | R2 | `rowPins[1]` | GP22 |
| Keypad | R3 | `rowPins[2]` | GP21 |
| Keypad | R4 | `rowPins[3]` | GP20 |
| Blue LED "1" | LED1 | `ledPins[0]` | GP11 |
| Blue LED "2" | LED2 | `ledPins[1]` | GP10 |
| Blue LED "3" | LED3 | `ledPins[2]` | GP9 |
| Blue LED "4" | LED4 | `ledPins[3]` | GP8 |
| Blue LED "5" | LED5 | `ledPins[4]` | GP7 |
| Blue LED "6" | LED6 | `ledPins[5]` | GP6 |
| Blue LED "7" | LED7 | `ledPins[6]` | GP5 |
| Blue LED "8" | LED8 | `ledPins[7]` | GP4 |
| Red LED "A" | LED9 | `ledPins[8]` | GP3 |
| Red LED "B" | LED10 | `ledPins[9]` | GP2 |
| Red LED "C" | LED11 | `ledPins[10]` | GP28 |
| Red LED "D" | LED12 | `ledPins[11]` | GP27 |

## Passive Components

- `r1..r12`: 220Ω series resistors for each LED.
- `rp1..rp4`: 1kΩ pull-ups tied to 3V3 for keypad row lines.

## Power and Ground

- LED cathodes share a common GND net (Pico GND).
- Keypad pull-up resistor chain is connected to Pico 3V3.

## Functional Validation

1. Press `1..8`: matching blue LED turns ON.
2. Press `9`: all blue LEDs ON.
3. Press `0`: all blue LEDs OFF.
4. Press `A..D`: matching red LED turns ON.
5. Press `*`: all red LEDs ON.
6. Press `#`: all red LEDs OFF.

> Note: The current logic latches LEDs ON/OFF per command and does not auto-reset.
