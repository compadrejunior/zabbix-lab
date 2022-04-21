sudo sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
sudo timedatectl set-timezone America/Sao_Paulo