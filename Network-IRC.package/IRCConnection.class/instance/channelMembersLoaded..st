as yet unclassified
channelMembersLoaded: aChannelInfo
	(self channelObservers
		select: [:each | each channelName = aChannelInfo name])
		do: [:obs | obs updateUsers]