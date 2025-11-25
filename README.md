

##### docker mac cpu
```sh

mkdir ~/Desktop/gensynkeys
cp ~/rl-swarm/keys/swarm.pem ~/Desktop/gensynkeys/swarm.pem
cp ~/rl-swarm/modal-login/temp-data/*.json ~/Desktop/gensynkeys/
rm -rf ~/rl-swarm
cd ~/
git clone -b 999 https://github.com/666-eth/rl-swarm.git
cd rl-swarm/
chmod +x zidong.sh
mkdir ~/rl-swarm/keys
cp ~/Desktop/gensynkeys/swarm.pem ~/rl-swarm/keys/swarm.pem 
cp ~/Desktop/gensynkeys/*.json ~/rl-swarm/modal-login/temp-data/ 
./zidong.sh
