#!/usr/bin/expect -f
# run_swarm.sh

set timeout -1

while {1} {
    spawn docker-compose run --rm --build -Pit swarm-cpu
    expect {
        -re {Would you like to push.*} { send "n\r"; exp_continue }
        -re {Enter the name of the model.*} { send "\r"; exp_continue }
        -re {Would you like your model to participate.*} { send "n\r"; exp_continue }
        eof
    }
    puts "一次执行完成，5秒后重启..."
    exec sleep 5
}
