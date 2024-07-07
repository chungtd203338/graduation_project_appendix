################################################################
#!/bin/bash
IF=enp3s0             # Interface
DELAY=50ms          # Delay
# IP=123.30.243.11     # Host IP
start() {
    sudo tc qdisc add dev $IF root netem delay 75ms
}

stop() {
    sudo tc qdisc del dev $IF root netem
}

case "$1" in

  start)

    echo -n "Starting Delay: "
    start
    echo "done"
    ;;

  stop)

    echo -n "Stopping Delay: "
    stop
    echo "done"
    ;;
  *)
    pwd=$(pwd)
    echo "Usage: tc.bash {start|stop}"
    ;;

esac

exit 0
##################################################################




# how to use
    # chmod 755 tc.bash
    # ./tc.bash start
