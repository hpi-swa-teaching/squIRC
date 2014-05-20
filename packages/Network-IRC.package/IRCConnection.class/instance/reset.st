private
reset
	"prepare for a new connection"

	recieveBuffer := String new.
	protocolMessagesToSend := OrderedCollection new.
	sendBuffer := nil.
	socket := nil.
	self channelList: nil.
	channelListBeingBuilt := nil.
	motd := nil.
	motdBeingBuilt := nil.
	subscribedChannels := Dictionary new