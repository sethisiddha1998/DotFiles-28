
#!/bin/bash

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="intel_pstate selector"
TITLE="Powerplan Selector"
MENU="Choose one of the following options:"

OPTIONS=(1 "Balanced"
         2 "Powersave"
         3 "Medium"
         4 "Performance")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
  1)
    echo "Balanced power plan selected"
    sudo pstate-frequency -S -p balanced
    ;;
  2)
    echo "Powersave power plan selected"
    sudo pstate-frequency -S -p powersave
    ;;
  3)
    echo "Medium power plan selected"
    sudo pstate-frequency -S -p medium
    ;;
  4)
    echo "Performance power plan selected"
    sudo pstate-frequency -S -p performance
    ;;
esac
