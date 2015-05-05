private
refreshChannelList
	"update the list of channels"
	| sortBlock |
	channelList := connection filteredChannelList: self channelsFilter.
	channelList
		ifNil: [channelList := #()].
	"sort the channels"
	sortCriterion = #name
		ifTrue: [sortBlock := [:a :b | a name asIRCLowercase < b name asIRCLowercase]]
		ifFalse: [sortBlock := [:a :b | a numUsers = b numUsers
						ifTrue: [a name asIRCLowercase < b name asIRCLowercase]
						ifFalse: [a numUsers > b numUsers]]].
	channelList := channelList asSortedCollection: sortBlock.
	channelList := channelList asArray.
	channelIndex := 0.
	self changed: #channelDescriptions.
	self changed: #channelIndex.
	self topView isNil
		ifFalse: [self topView activate]