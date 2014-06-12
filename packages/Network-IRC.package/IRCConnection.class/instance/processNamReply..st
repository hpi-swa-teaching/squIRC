private-message handling
processNamReply: aMessage 
	"list of names for a channel, probably a channel being joined"
	| names lChannelName channelInfo channelMembers channelMember |

	lChannelName := (aMessage arguments at: 3) asIRCLowercase.
	channelMembers := OrderedCollection new.
	names := aMessage arguments last findTokens: ' '.

	names
		do: [:origName | 
			channelMember := IRCChannelMember fromString: origName.
			channelMember channel: lChannelName.
			channelMembers add: channelMember].
	channelInfo := subscribedChannels
				at: lChannelName
				ifAbsent: [].
	channelInfo
		ifNotNil: [channelInfo addMembers: channelMembers]