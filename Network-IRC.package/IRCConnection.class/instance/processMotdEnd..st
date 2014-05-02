private-message handling
processMotdEnd: aMessage
	"the whole MOTD has arrived"
	motd _ motdBeingBuilt contents.
	motdBeingBuilt _ nil.
	self changed: #motd.