echo Ring Alarm Integration
echo Node Version
node -v
echo NPM Version
npm -v
git --version

cp /data/options.json ring-alarm-mqtt/config.json

cd ring-alarm-mqtt
npm install
npm audit fix
chmod +x ring-alarm-mqtt.js
DEBUG=ring-alarm-mqtt /ring-alarm-mqtt/ring-alarm-mqtt.js
