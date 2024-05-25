# MonitorMax
MonitorMax is a comprehensive system monitoring tool designed to provide detailed insights into your Linux system's performance and health. With MonitorMax, you can easily monitor critical system metrics, including disk usage, CPU utilization, RAM consumption, and kernel version, all presented in a clear and visually appealing format.
# Key Features:
Disk Usage Monitoring: Quickly view the storage usage of your file systems, helping you manage disk space effectively.
CPU Utilization: Real-time display of CPU usage statistics, enabling you to monitor system load and performance.
RAM Consumption: Detailed memory usage metrics, showing total, used, free, and available memory.
Kernel Version: Easily identify the kernel version your system is running, useful for compatibility checks and troubleshooting.
Benefits:
Enhanced System Visibility: Provides a clear and concise overview of your system’s performance, making it easier to detect and address issues.
User-Friendly Output: Color-coded and well-formatted output for better readability and quicker analysis.
Lightweight and Efficient: Designed to run efficiently without significant resource consumption.
# Usage:
To use SysMon Pro, ensure the script is executable and run it from the terminal:
```
chmod +x status.sh
./status.sh
```
## Example Output:
```
==================== Disk Usage ====================

Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        79G   16G   59G  22% /

==================== CPU Usage =====================

%Cpu(s): 18.2 us,  9.1 sy,  0.0 ni, 72.7 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st

==================== RAM Usage =====================

               total        used        free      shared  buff/cache   available
Mem:           3.6Gi       1.0Gi       2.3Gi        54Mi       577Mi       2.6Gi

==================== Kernel Version ==================

6.6.15-amd64
```
