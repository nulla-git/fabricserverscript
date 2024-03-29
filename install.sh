
apt update -qq && apt install -qq --yes openjdk-17-jdk nano
apt uprade -qq --yes
cd ~
mkdir fabric_server
cd fabric_server
echo ----------------------------------------
echo The server jar will now be downloaded...
echo ----------------------------------------
sleep 5s
wget https://launcher.mojang.com/v1/objects/125e5adf40c659fd3bce3e66e67a16bb49ecc1b9/server.jar

echo ------------------------------------------------------------------
echo You will now enter the server environment to generate the eula.txt
echo ------------------------------------------------------------------
sleep 5s
java -jar server.jar

echo ----------------------------------------------------------------------------------------------------
echo You will now be put into nano to accept the EULA. Read it here: https://www.minecraft.net/en-us/eula
echo ----------------------------------------------------------------------------------------------------
sleep 10s
nano eula.txt


cd ~
mkdir fabric_launcher
cd fabric_launcher
echo -------------------------------------------------------------------------------------------------
echo The fabric installer will now be downloaded, install the server in ~/fabric_server.
echo When done, close the launcher and DO NOT GENERATE LAUNCH SCRIPTS, THIS SCRIPT WILL DO IT FOR YOU.
echo -------------------------------------------------------------------------------------------------
sleep 10s
wget https://maven.fabricmc.net/net/fabricmc/fabric-installer/0.10.2/fabric-installer-0.10.2.jar
java -jar fabric-installer-0.10.2.jar
echo --------------------------------------------------------
echo Removing fabric_launcher and generating launch script...
echo --------------------------------------------------------
cd ~
cd fabric_server
touch start.sh
echo java -Xmx5G -jar fabric-server-launch.jar >> start.sh

cd ~
cd fabric_launcher
rm fabric-installer-0.10.2.jar
cd ~
rmdir fabric_launcher
echo -------------------------------------------------------------------------------------------------------------------
echo The server has been installed in the ~/fabric_server directory.
echo Forward ports, then install the mods you want. Afterwards, run the start.sh file in ~/fabric_server and have fun!
echo -------------------------------------------------------------------------------------------------------------------
