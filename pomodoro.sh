#!/usr/bin/env bash

echo " " >> job.txt

# list func
function list() {
  clear
  echo """

  1 - standard
  2 - custom
  3 - clear [job.txt]
  0 - exit

  """

#  echo "Enter Number"
#  read -p ">>> " input

}

list

echo "Enter Number"
read -p ">>> " input

# while func
function rel() {

  while [[ $input == "0" ]]; do
#    list
#    echo "Enter Number"
#    read -p ">>> " input
#    clear
    exit

  done
}

#rel


# func
function funcx() {

case $input in
  "1" )
    clear
#    echo """

#    Decide on the task to be done
#    Set the timer to 25 minutes
#    Work on the task until the timer rings
#    Take a short 5 minute break
#    Take a 15 minute break

#TIME :  25m, 5m, 25m, 5m, 25m, 15m

#    """

    cowsay "
    #    Decide on the task to be done
    #    Set the timer to 25 minutes
    #    Work on the task until the timer rings
    #    Take a short 5 minute break
    #    Take a 15 minute break

    #TIME :  25m, 5m, 25m, 5m, 25m, 15m

    #    "

    echo "Enter Start(y)/No(n)"
    read -p ">>> " sn

    if [[ $sn == "y" ]]; then
      echo "Start"
      sleep 1
      clear

      echo "Exit with ^C"
      echo -e "\n"
      echo "start 25m"
      notify-send "start tomato time (25m)"
      sleep 25m
      echo -e "\n"
      echo "end 25m"
      echo -e "\n"
      mplayer .m/warnning.wav
      sleep 9
      echo -e "\n"

      clear
      echo "Exit with ^C"
      echo -e "\n"
      echo "start 5m"
      notify-send "start short break time (5m)"
      sleep 5m
      echo -e "\n"
      echo "end 5m"
      echo -e "\n"
      mplayer .m/warnning.wav
      sleep 9
      echo -e "\n"

      clear
      echo "Exit with ^C"
      echo -e "\n"
      echo "start 25m"
      notify-send "start tomato time (25m)"
      sleep 25m
      echo -e "\n"
      echo "end 25m"
      echo -e "\n"
      mplayer .m/warnning.wav
      sleep 9
      echo -e "\n"

      clear
      echo "Exit with ^C"
      echo -e "\n"
      echo "start 5m"
      notify-send "start short break time (5m)"
      sleep 5m
      echo -e "\n"
      echo "end 5m"
      echo -e "\n"
      mplayer .m/warnning.wav
      sleep 9
      echo -e "\n"

      clear
      echo "Exit with ^C"
      echo -e "\n"
      echo "start 25m"
      notify-send "start tomato time (25m)"
      sleep 25m
      echo -e "\n"
      echo "end 25m"
      echo -e "\n"
      mplayer .m/warnning.wav
      sleep 9
      echo -e "\n"

      clear
      echo "Exit with ^C"
      echo -e "\n"
      echo "start 15m"
      notify-send "start long break time (15m)"
      sleep 15m
      echo -e "\n"
      echo "end 15m"
      echo -e "\n"
      mplayer .m/warnning.wav
      sleep 3
      echo -e "\n"

      clear
      echo -e "\n"
      cowsay "exit(x) reload(Enter)"
      read -p ">>> " er


      if [[ $er == "x" ]]; then

        exit

      fi

      while [[ $er != "x" ]]; do
        list
        echo "Enter Number"
        read -p ">>> " input
        rel
        funcx
      done


      exit

    fi

    while [[ $sn != "y" ]]; do
      list
      echo "Enter Number"
      read -p ">>> " input
      rel
      funcx
    done
    ;;


  "2" )
    clear
    cowsay "(custom) config time"

    read -p "Enter tomato time(minuts): " ttime
    read -p "Enter your job: " job
    DT=`date +%X`
    echo -e "\n time start: $DT"
    echo -e "time tomato: $ttime'm"
    echo -e "job: $job \n"
    echo -e "exit with ^C \n"

    echo "Time: $DT" >> job.txt

    sleep "$ttime"m
    mplayer .m/warnning.wav
    notify-send "tomato end..."

    echo $job >> job.txt
    echo "$ttime Minute" >> job.txt
    echo "---------" >> job.txt

    echo -e "\n"
    read -p "exit(x) menu(Enter): " cr


    if [[ $cr == "x" ]]; then

      exit

    fi

    while [[ $cr != "x" ]]; do
      list
      echo "Enter Number"
      read -p ">>> " input
      rel
      funcx
    done
    ;;

  "3" )
    clear
    cowsay "CLEAR job.txt"
    read -p "y/n: " jodern
    if [[ "$jodern" == "y" ]]; then
      echo " " > job.txt
      echo -e "Done! \n"
    else
      echo "tschuess!"
      exit

    fi

#    clear
#    cowsay "CLEAR job.txt"
#    echo " " > job.txt
#    echo -e "Done! \n"

  ;;

esac

}

funcx
clear
