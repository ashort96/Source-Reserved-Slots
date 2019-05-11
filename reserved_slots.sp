#pragma semicolon 1
#include <sourcemod>
#define PLUGIN_VERSION "1.0.4"

#define SLOTS 0
#define URL 1

new Handle:g_arrCVars[2];

public Plugin:myinfo =
{
	name = "Custom Reserved Slots",
	author = "Adam Short",
	description = "Custom Reserved Slots",
	version = PLUGIN_VERSION,
	url = "https://github.com/ashort96/Source-Reserved-Slots"
};

public OnPluginStart() {
	g_arrCVars[SLOTS] = CreateConVar("sm_reservedslots", "5", "Number of reserved slots");
	g_arrCVars[URL] = CreateConVar("sm_reservedslots_url", "https://github.com/ashort96/Source-Reserved-Slots", "URL");
}


public void OnClientPostAdminCheck(int client) {
	if(GetClientCount() > (MaxClients - GetConVarInt(g_arrCVars[SLOTS]))) {
		if(GetUserFlagBits(client) & (ADMFLAG_RESERVATION) != (ADMFLAG_RESERVATION)) {
			char buffer[512];
			char url[128];
			GetConVarString(g_arrCVars[URL], url, 128);
			FormatEx(buffer, 512, "Apply @ %s for reserved slot access.", url);
			KickClient(client, buffer);
		}
	}

}
