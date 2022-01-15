apt update -qq && apt install -qq --yes openjdk-17-jdk git tar

git clone https://github.com/nulla-git/Minecraft_Server_18.1.git
cd Minecraft_Server_18.1
tar -xpvf server.tar.gz
rm server.tar.gz

sh start.sh
