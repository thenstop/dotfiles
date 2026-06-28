function fish_greeting
    set -l cpu (grep 'cpu ' /proc/stat | awk '{print ($2+$4)*100/($2+$4+$5)}')
    set -l ram (free -m | awk '/Mem:/ {printf "%d/%dMB (%.2f%%)", $3, $2, $3*100/$2}')
    set -l dsk (df -h / | awk 'NR==2 {print $3 "/" $2 " (" $5 ")"}')

    echo -e "\n---------------------"
    printf "CPU:  %.2f%%\nRAM:  %s\nDisk: %s\n---------------------\n" $cpu $ram $dsk
end
