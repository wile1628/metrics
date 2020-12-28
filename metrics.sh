#!/bin/bash
# echo -n "Enter your parameter: "
# read VAR1
cpu_filter="%Cpu(s):"
mib_mem_filter="MiB Mem :"
mib_swap_filter="MiB Swap:"

if [ $1 == "mem" ]
    then
        echo Virtual total: $(top -b -n 1 | grep "MiB Mem :" | awk '{print$4}')
        echo Virtual free: $(top -b -n 1 | grep "MiB Mem :" | awk '{print$6}')
        echo Virtual used: $(top -b -n 1 | grep "MiB Mem :" | awk '{print$8}')
        echo Virtual shared: $(top -b -n 1 | grep "MiB Mem :" | awk '{print$10}')
        echo Swap total: $(top -b -n 1 | grep "MiB Swap:" | awk '{print$3}')
        echo Swap free: $(top -b -n 1 | grep "MiB Swap:" | awk '{print$5}')
        echo Swap used: $(top -b -n 1 | grep "MiB Swap:" | awk '{print$7}')
        echo Swap available: $(top -b -n 1 | grep "MiB Swap:" | awk '{print$9}')
elif [ $1 == "cpu" ]
    then
        echo User space: $(top -b -n 1 | grep $cpu_filter | awk '{print$2}')
        echo System cpu time: $(top -b -n 1 | grep $cpu_filter | awk '{print$4}')
        echo User nice cpu time: $(top -b -n 1 | grep $cpu_filter | awk '{print$6}')
        echo idle cpu time: $(top -b -n 1 | grep $cpu_filter | awk '{print$8}')
        echo io \wait cpu time: $(top -b -n 1 | grep $cpu_filter | awk '{print$10}')
        echo hardware irq: $(top -b -n 1 | grep $cpu_filter | awk '{print$12}')
        echo software irq: $(top -b -n 1 | grep $cpu_filter | awk '{print$14}')
        echo steal time: $(top -b -n 1 | grep $cpu_filter | awk '{print$16}')
else
    echo "not right parameter"
fi