#!/bin/bash
mkdir /opt/enigmatica2
mkdir /opt/enigmatica2/server
echo "eula=true" > /opt/enigmatica2/server/eula.txt
curl -L -o /tmp/enigmatica2.zip 'https://minecraft.curseforge.com/projects/enigmatica2/files/2657672/download'
unzip /tmp/enigmatica2.zip -d /opt/enigmatica2/server
curl -o /opt/enigmatica2/server/settings.cfg https://raw.githubusercontent.com/Johnley/MinecraftCloudConfigs/master/settings.cfg
curl -o /opt/enigmatica2/server/ops.json https://raw.githubusercontent.com/Johnley/MinecraftCloudConfigs/master/ops.json
curl http://169.254.169.254/metadata/v1/interfaces/public/0/ipv4/address > /tmp/ip.txt
curl -H "Content-Type: application/json" -d '{"content":"Server is starting, IP Address is '$(cat /tmp/ip.txt)', please wait up to 10 minutes for init to complete."}' "https://discordapp.com/api/webhooks/533436104309997604/wzlwpTeVUuKbxeafOPMANC9I-Da1DnBJ7B1wAIKcIaQn3AyWc2zcGCL2XQ2bDOHVwXaY"
