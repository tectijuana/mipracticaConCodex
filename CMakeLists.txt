cmake_minimum_required(VERSION 3.13)
project(pico_w_keypad_led C CXX)

# This repository preserves Arduino-style application logic in src/main.cpp.
# Build options:
# 1) Arduino core for RP2040 (recommended for this source as-is)
# 2) Pico SDK port (requires adapting framework glue only; business logic can remain unchanged)

add_custom_target(info ALL
  COMMAND ${CMAKE_COMMAND} -E echo "Use Arduino IDE or PlatformIO to build src/main.cpp with Keypad library."
)
