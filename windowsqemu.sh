sudo apt update -y
sudo apt upgrade -y
sudo apt install wget curl -y
wget -O ngrok.tgz https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
tar -zxvf ngrok.tgz
read -p "Paste authtoken here (Copy and Ctrl+V to paste then press Enter): ' CRP
./ngrok config add-authtoken $CRP
./ngrok http 8006 --region ap &>/dev/null &
sudo chmod 666 /dev/kvm
sudo mkdir /isos/
read -p "Paste ISO Windows here ( Windows 10, 11 and other only): ' iso
sudo wget -O /isos/a.iso "$iso" &>/dev/null &
while ps axg | grep -vw grep | grep -w wget > /dev/null; do sleep 1; done
sudo wget -O /isos/driver.iso https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/archive-virtio/virtio-win-0.1.240-1/virtio-win-0.1.240.iso &>/dev/null &
while ps axg | grep -vw grep | grep -w wget > /dev/null; do sleep 1; done
wget https://raw.githubusercontent.com/ubuntu2310fake/ActionDocker/main/compose.yaml
echo "Complete, please wait for setup..."
sudo docker compose up
