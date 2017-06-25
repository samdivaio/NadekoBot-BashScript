#!/bin/sh
echo ""
echo "Running NadekoBot with auto restart normally! (without updating)"
sleep 5s
cd NadekoBot/src/NadekoBot
while :; do dotnet run -c Release -- {0} {1} {2}; sleep 5s; done
echo ""
echo "That didn't work? Please report in #NadekoLog Discord Server."
sleep 3s
bash linuxAIO.sh
echo "Done"
exit 0
