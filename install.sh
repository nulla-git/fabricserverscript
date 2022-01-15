
apt update -qq && apt install -qq --yes openjdk-17-jdk nano
apt uprade -qq --yes
cd ../
mkdir minecraft_server
cd minecraft_server
echo ----------------------------------------
echo The server jar will now be downloaded...
echo ----------------------------------------
wget https://launcher.mojang.com/v1/objects/125e5adf40c659fd3bce3e66e67a16bb49ecc1b9/server.jar

echo You will now enter the server environment to generate the eula.txt
sleep 5s
java -jar server.jar

echo You will now be put into nano to accept the EULA. Read it here: https://www.minecraft.net/en-us/eula
sleep 5s
nano eula.txt

cd ../
mkdir fabric_launcher
cd fabric_launcher
echo -------------------------------------------------------------------------------------------------
echo The fabric installer will now be downloaded, install the server in ~/minecraft_server.
echo When done, close the launcher and DO NOT GENERATE LAUNCH SCRIPTS, THIS SCRIPT WILL DO IT FOR YOU.
echo -------------------------------------------------------------------------------------------------
sleep 10s
wget https://maven.fabricmc.net/net/fabricmc/fabric-installer/0.10.2/fabric-installer-0.10.2.jar
java -jar fabric-installer-0.10.2.jar
cd ../
cd minecraft_server
touch start.sh
echo java -Xmx5G -jar fabric-server-launch.jar >> start.sh
cd ../
cd fabric_launcher
rm fabric-installer-0.10.2.jar
cd ../
rmdir fabric_launcher
echo -------------------------------------------------------------------------------------------------------------------
echo The server has been installed in the ~/minecraft_server directory.
echo Forward ports, then install the mods you want. Afterwards, run the start.sh file in ~/minecraft_server and have fun!
echo -------------------------------------------------------------------------------------------------------------------
