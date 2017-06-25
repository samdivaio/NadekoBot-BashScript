#!/bin/sh
echo ""
echo "Running NadekoBot with auto restart and updating to latest build!"
sleep 5s
while :; do cd NadekoBot && dotnet restore && dotnet build --configuration Release && cd - && cd NadekoBot/src/NadekoBot && dotnet run -c Release && cd - && wget -N https://cdn.discordapp.com/attachments/287982972664020994/325603867431534603/1.4-new.sh && bash 1.4-new.sh; sleep 5s; done
echo ""
echo "That didn't work? Please report in #NadekoLog Discord Server."
sleep 3s
bash linuxAIO.sh
echo "Done"
exit 0
