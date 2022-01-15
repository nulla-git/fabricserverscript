apt update -qq && apt install -qq --yes openjdk-17-jdk nano
apt uprade -qq --yes
sleep 1s
mkdir minecraft_server
cd minecraft_server
sleep 1s
echo the server jar will now be downloaded...
sleep 5s
wget https://launcher.mojang.com/v1/objects/125e5adf40c659fd3bce3e66e67a16bb49ecc1b9/server.jar

echo you will now enter the server environment to generate the eula.txt
sleep 10s
java -jar server.jar

echo because I am lazy, you will now be dropped into nano to accept the eula
sleep 15s
nano eula.txt
sleep 1s

cd ../
mkdir fabric_launcher
cd fabric_launcher
echo The fabric installer will now be downloaded, install the server in ~/minecraft_server
sleep 20s
wget https://maven.fabricmc.net/net/fabricmc/fabric-installer/0.10.2/fabric-installer-0.10.2.jar
java -jar fabric-installer-0.10.2.jar
sleep 2s
cd ../
cd minecraft_server
touch start.sh
echo java -Xmx3600m -jar fabric-server-launch.jar >> start.sh
sleep 1s
echo The server is now set up, run it and have fun!
