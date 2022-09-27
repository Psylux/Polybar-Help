#launch.sh which is stored in ./config/polybar

#!/usr/bin/env sh

#Terminate already running bar instances
killall -q polybar

#wait until all processes have stopped
while grep -x polybar >/dev/null; do sleep 1; done

#launch
polybar main &

echo "Bar launched..."
