# Simon Says game for GFMPW-1 Shuttle

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

## About the game

Simon says is a simple electronic memory game: the user has to repeat a growing sequence of colors.
The sequence is displayed by lighting up the LEDs. Each color also has a corresponding tone.

In each turn, the game will play the sequence, and then wait for the user to repeat the sequence
by pressing the buttons according to the color sequence.
If the user repeated the sequence correctly, the game will play a "leveling-up" sound,
add a new color at the end of the sequence, and move to the next turn.

The game continues until the user has made a mistake. Then a game over sound is played, and the game restarts.

## Online simulation

You can play the game using the online Wokwi simulation at https://wokwi.com/projects/371755521090136065.
The simulation also shows the wiring diagram.

## Hardware

You need four buttons, four LEDs, resistors, and optionally a speaker/buzzer and a two digit 7-segment display for the score.

Ideally, you want to use 4 different colors for the buttons/LEDs (red, green, blue, yellow).

The game requires 10 MHz clock input (or 100 KHz when `slow_clk` is 1).

1. Connect the buttons to pins `btn1`, `btn2`, `btn3`, and `btn4`, and also connect each button to a pull down resistor.
2. Connect the LEDs to pins `led1`, `led2`, `led3`, and `led4`, matching the colors of the buttons (so `led1` and `btn1` have the same color, etc.)
3. Connect the speaker to the `speaker` pin.
4. Connect the seven segment display as follows: `seg_a` through `sev_g` to individual segments, `dig1` to the common pin of the first digit, `dig2` to the common pin of the second digit.
   Set `seginv` according to the type of 7 segment display you have: high for common anode, low for common cathode.
5. Connect `slow_clk` to ground
6. Reset the game, and then press any button to start it. Enjoy!

## Pinout

| mprj_io | Function |
| ------- | -------- |
| 8       | btn1     |
| 9       | btn2     |
| 10      | btn3     |
| 11      | btn4     |
| 12      | led1     |
| 13      | led2     |
| 14      | led3     |
| 15      | led4     |
| 16      | speaker  |
| 17      | seg_a    |
| 18      | seg_b    |
| 19      | seg_c    |
| 20      | seg_d    |
| 21      | seg_e    |
| 22      | seg_f    |
| 23      | seg_g    |
| 24      | dig1     |
| 25      | dig2     |
| 26      | seginv   |
| 27      | slow_clk |

## Hardening

1.  Set up the environment:
    ```bash
    mkdir -p dependencies
    export OPENLANE_ROOT=$(pwd)/dependencies/openlane_src
    export PDK_ROOT=$(pwd)/dependencies/pdks
    export PDK=gf180mcuD
    # This will download and install caravel, the PDK, required OpenLane version, etc.
    make setup
    ```
2.  Each time you want to harden:

    ```bash
    export OPENLANE_ROOT=$(pwd)/dependencies/openlane_src
    export PDK_ROOT=$(pwd)/dependencies/pdks
    export PDK=gf180mcuD

    make urish_simon_says
    ```
