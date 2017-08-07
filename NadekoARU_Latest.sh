#!/bin/sh
echo ""
echo "Running NadekoBot with auto restart and updating to latest build!"
root=$(pwd)
youtube-dl -U

sleep 5s
while :; do cd "$root/NadekoBot" && dotnet restore && dotnet build --configuration Release && cd "$root/NadekoBot/src/NadekoBot" && dotnet run -c Release && cd "$root" && wget -N --no-check-certificate https://github.com/samdivaio/NadekoBot-BashScript/raw/1.4-no_certs/nadeko_installer_latest.sh && bash "$root/nadeko_installer_latest.sh"; sleep 5s; done
echo ""
echo "That didn't work? Please report in #NadekoLog Discord Server."
sleep 3s

cd "$root"
bash "$root/linuxAIO.sh"
echo "Done"

rm "$root/NadekoARU_Latest.sh"
exit 0
