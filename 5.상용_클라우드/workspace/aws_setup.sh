#!/bin/bash

# ������ ������Ʈ
apt-get update;

# ���̽� ��Ű�� ��ġ �� pip ��ġ
apt install -y python3-pip;

# ���̽� pip ������ ���� �ϵ��� �ϴ� wheel ��ġ
pip3 install wheel;

# Flask ��ġ
pip3 install Flask;

# pandas ��ġ
pip3 install pandas;

# pillow 설치
pip3 install pillow==8.3.2

# matplotlib ��ġ
pip3 install matplotlib;

# pyecharts ��ġ
pip3 install pyecharts;

# waitress ��ġ
pip3 install waitress;

# root/project1 ������ ������ ��� ����ڰ� �а� ���� ���� �����ϵ��� ����
chmod -R 777 /root/project1;

# nginx ��ġ
apt install -y nginx;

# nginx ��ġ�� /etc/nginx/sites-available ���� ����
mkdir -p  /etc/nginx/sites-available;

# nginx ���� ������ /etc/nginx/sites-available/ ������ ����
cp /root/project1.conf /etc/nginx/sites-available;

# AWS ������ Ȯ��
curl ipecho.net/plain; echo;

# AWS �����Ǹ� ���� my_ip�� ����
my_ip="$(curl ipecho.net/plain; echo)";

# ���� my_ip ���
echo $my_ip;
# sed�� ���Ͽ��� Ư�� ���ڸ� ã�Ƽ� �ٲ��ִ� �Լ� 
# localhost�� ã�Ƽ� my_ip ������ ����

sed 's/localhost/'"$my_ip"'/' -i /etc/nginx/sites-available/project1.conf ;


# nginx ������ �ִ� /etc/nginx/sites-enabled �������̵�
cd /etc/nginx/sites-enabled; 
# nginx ���� ���� ����
rm default;

# nginx ����
ln -s /etc/nginx/sites-available/project1.conf;

# nginx �� ������ 777�� ����
chmod -R 777 /etc/nginx;

# nginx �����ϴ� ����ڸ� ���� www-data ���� root �� ����
sed 's/www-data/root/' -i /etc/nginx/nginx.conf;
 


# nginx �����
systemctl restart nginx;

# ������Ʈ ��ġ
apt -qq -y install fonts-nanum;

# ������Ʈ matplotlib�� ����
cp /usr/share/fonts/truetype/nanum/Nanum* /usr/local/lib/python3.6/dist-packages/matplotlib/mpl-data/fonts/ttf/;