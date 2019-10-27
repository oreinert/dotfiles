if [ -d /sys/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/device:34/PNP0C09:00/PNP0C0A:00/power_supply/BAT0 ]; then
    alias bat='echo $(cat /sys/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/device:34/PNP0C09:00/PNP0C0A:00/power_supply/BAT0/capacity)\% charge left'
fi

