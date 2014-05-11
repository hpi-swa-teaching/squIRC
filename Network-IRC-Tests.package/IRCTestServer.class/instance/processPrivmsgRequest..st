responses
processPrivmsgRequest: anIRCProtocolMessage 
	"Send a fake response as if someone replies to our channel message."
	| channelName recvdMessage |
	channelName := anIRCProtocolMessage arguments first.
	recvdMessage := anIRCProtocolMessage arguments second.
	self sendStringAsProtocolMessage: ':Andreutza!~andre@c-someAddress.com PRIVMSG ' , channelName , ' :You said "' , recvdMessage , '"'