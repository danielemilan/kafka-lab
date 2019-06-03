#!/usr/bin/env bash
SESSION='kafka-lab'

SLEEP_BEFORE_KAFKA=5s

tmux new-session -d -s $SESSION

tmux new-window -t $SESSION:1 -n "ZooKeeper 1"
tmux send-keys "./run-zookeeper.sh 1" C-m

tmux new-window -t $SESSION:2 -n "ZooKeeper 2"
tmux send-keys "./run-zookeeper.sh 2" C-m

tmux new-window -t $SESSION:3 -n "ZooKeeper 3"
tmux send-keys "./run-zookeeper.sh 3" C-m

tmux new-window -t $SESSION:4 -n "Kafka 0"
tmux send-keys "sleep $SLEEP_BEFORE_KAFKA; ./start-server.sh 0" C-m

tmux new-window -t $SESSION:5 -n "Kafka 1"
tmux send-keys "sleep $SLEEP_BEFORE_KAFKA; ./start-server.sh 1" C-m

tmux new-window -t $SESSION:6 -n "Kafka 2"
tmux send-keys "sleep $SLEEP_BEFORE_KAFKA; ./start-server.sh 2" C-m

tmux attach-session -t $SESSION