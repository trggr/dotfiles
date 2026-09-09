
#!/bin/bash

# Check if the external monitor (DVI-I-1-1) is connected
if xrandr | grep -q "DVI-I-1-1 connected"; then
    # External monitor present: turn OFF internal screen (eDP-1) and use ONLY external
    xrandr --output eDP-1 --off \
           --output DVI-I-1-1 --auto --primary
else
    # External monitor disconnected: fallback to internal screen ONLY
    xrandr --output eDP-1 --auto --primary \
           --output DVI-I-1-1 --off
fi

