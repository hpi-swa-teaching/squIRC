as yet unclassified
subscribedChannelsHavingMemberNamed: aString 
	^	subscribedChannels select: [:channel | channel hasMember: aString]
