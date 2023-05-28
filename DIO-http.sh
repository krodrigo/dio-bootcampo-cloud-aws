echo "Atualizando o servidor"
sudo apt update
sudo apt upgrade -y

echo "Instalando apache"
sudo apt install apache2 -y

echo "Instalando unzip"
sudo apt install unzip -y

echo "Fazendo download da aplicação"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -O /tmp/main.zip

echo "Publicar aplicação no apache"
unzip /tmp/main.zip -d /tmp
sudo cp -R /tmp/linux-site-dio-main/* /var/www/html

echo "Finalizado"
