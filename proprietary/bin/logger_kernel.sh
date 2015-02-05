#!/system/bin/sh

kernel_log_prop=`getprop persist.service.kernel.enable`

touch /data/logger/kernel.log
chmod 0666 /data/logger/kernel.log

case "$kernel_log_prop" in
	6)
		/system/bin/kernel_logger -f /data/logger/kernel.log -n 100 -r 8192 -t 1000
	;;
	5)
        /system/bin/kernel_logger -f /data/logger/kernel.log -n 50 -r 8192 -t 1000
	;;
	4)
        /system/bin/kernel_logger -f /data/logger/kernel.log -n 20 -r 8192 -t 1000
	;;
	3)
        /system/bin/kernel_logger -f /data/logger/kernel.log -n 10 -r 8192 -t 1000
	;;
	2)
        /system/bin/kernel_logger -f /data/logger/kernel.log -n 4 -r 1024 -t 1000
	;;
	1)
        /system/bin/kernel_logger -f /data/logger/kernel.log -n 4 -r 8192 -t 1000
	;;
esac