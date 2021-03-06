# Source-Reserved-Slots (v1.0.4)

## Description

This plugin allows for the last X slots to be reserved for anyone with the 'reserved access slot' flag. Built for [SourceMod](https://www.sourcemod.net/). Should work with CS:S, CS:GO, and all other servers that run SourceMod. If it doesn't work, please open up an [issue](https://github.com/ashort96/Source-Reserved-Slots/issues) and I will attempt to fix it.

This plugin was built for a server that did not want to use the built-in reserved slot feature, but wanted the last few slots to be reserved.

---

## Variables

These are the variables that this plugin uses. If you do not know how to use these, just add them to your server.cfg (or any similar file you may use for your server, such as autoexec.cfg), and it will update the variables for your server.

`sm_reservedslots` - Number of slots reserved, takes a string

`sm_reservedslots_url` - URL for the kick message, tells people to apply

Example:
```
sm_reservedslots "5"
sm_reservedslots_url "https://github.com/ashort96/Source-Reserved-Slots"
```

---

## Future

In the future, this plugin might get a few more features, such as custom kick messages, but it was built for one server and it meets the needs of that server, so I might not really update it anymore. It's a pretty simple plugin.