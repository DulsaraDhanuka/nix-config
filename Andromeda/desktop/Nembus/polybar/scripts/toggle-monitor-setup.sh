MONITOR_SETUP_TOGGLE=$HOME/.dual-monitor-setup

if ! [ -f $MONITOR_SETUP_TOGGLE ];
then
  touch $MONITOR_SETUP_TOGGLE
  xrandr --output Virtual-1 --auto --primary
  xrandr --output Virtual-2 --off
  i3-msg reload
else
  rm $MONITOR_SETUP_TOGGLE
  xrandr --output Virtual-1 --auto --primary;
  xrandr --output Virtual-2 --auto --left-of Virtual-1
  i3-msg reload
fi
