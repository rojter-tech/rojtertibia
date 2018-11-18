[code]
#!/bin/bash
ulimit -c unlimited

while true; do
./tfs >> data/logs/output.log &
PID=$!
echo $PID > tfs.pid
wait $PID
#./scripts/backupGames.sh;
sleep 2
done
[/code]