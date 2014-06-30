private-message handling
processMotd: aMessage
	"a new line has arrived for the MOTD"

	motdBeingBuilt nextPutAll:  (self markIfURL:  (aMessage arguments second) startingAt: 1).
	motdBeingBuilt cr.