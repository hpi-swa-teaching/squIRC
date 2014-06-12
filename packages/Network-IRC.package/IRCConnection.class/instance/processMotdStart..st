private-message handling
processMotdStart: aMessage
	"MOTD is being transmitted"
	motdBeingBuilt _ TextStream on: Text new.