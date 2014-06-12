private-initialization
initialize: anIRCConnection 
	connection := anIRCConnection.
	channelList := #().
	channelIndex := 0.
	sortCriterion := #name.
	self initializeChannelsFilter.
	anIRCConnection addDependent: self.
	self refreshChannelList.
	channelMenuList := SortedCollection new: 1.
	channelMenuList add: '#squeak'