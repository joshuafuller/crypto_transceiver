#!/usr/bin/env sh

# Record buffer is 80ms; A frame length in crypto_tx and crypto_rx is 40ms
# Equalizer emulates a Baofeng UV-82c at low power in VHF. See here:
# https://fcc.report/FCC-ID/ZP5BF-82/2153201
export AUDIODRIVER=alsa
export AUDIODEV="plughw:0,0"
exec rec -t raw -r 8000 -c 1 -b 16 -e signed-integer --buffer 640 -q - sinc 300-3000 equalizer 300 100h -13.64 equalizer 400 100h -7.37 equalizer 500 100h -5.88 equalizer 600 100h -3.99 equalizer 700 100h -2.9 equalizer 800 100h -1.6 equalizer 900 100h -0.76 equalizer 1000 100h 0.0 equalizer 1200 200h 1.8 equalizer 1400 200h 3.07 equalizer 1600 200h 4.06 equalizer 1800 200h 4.98 equalizer 2000 200h 5.81 equalizer 2200 200h 6.55 equalizer 2400 200h 7.17 equalizer 2600 200h 7.58 equalizer 2800 200h 7.75 equalizer 3000 200h 7.4
