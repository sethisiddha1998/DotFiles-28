#!/bin/bash

PS3='Please Select Power Plan:'
options=("Low" "Powersave" "Medium" "Balanced" "Performace" "Quit")
select opt in "${options[@]}"
do
  case $opt in 
    "Low")
      echo "low"
      pstate-frequency -S -p low
      break
      ;;
    "Powersave")
      echo "Powersave"
      pstate-frequency -S -p powersave
      break
    ;;
  "Medium")
      echo "medium"
      pstate-frequency -S -p medium
      break
    ;;
  "Balanced")
      echo "balanced"
      pstate-frequency -S -p balanced
      break
    ;;
  "Performance")
      echo "performance"
      pstate-frequency -S -p performance
      break
    ;;
  "Quit")
      break
    ;;
  *) echo "invalid option";;
esac
done

