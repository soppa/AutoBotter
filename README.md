# AutoBotter for Zandronum
Automatically adds/removes bots so server has the desired number of players and once a specific number of real players have joined, all bots will be automatically kicked.

**Tested on the following servers:**
* Q-Zandronum 1.4.20
* Zandronum 3.1
* Zandronum 3.2 Alpha 241030

## Configuration
AutoBotter can be customized with the following variables:

| CVar | Type | Default | Description |
| ---- | ---- | ---- | ---- |
| `autobotter_botfill` | integer | 4 | Target number of players on the server, adding/removing bots to maintain the desired player count. Should be lower than `sv_maxplayers`. |
| `autobotter_playerlimit` | integer | 2 | Number of real players on the server that will cause all bots to be kicked. Bots will be added back when player count drops below this. |
