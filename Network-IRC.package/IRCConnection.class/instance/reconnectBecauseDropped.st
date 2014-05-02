as yet unclassified
reconnectBecauseDropped
	"The user has manually reconnected us because of a server connection  
	drop. See if we can restore some things."
	| panes |
	panes := gui allSwappedPaneNamesWithModels.
	panes
		do: [:each | 
			(each isKindOf: IRCChannelObserver)
				ifTrue: [self reconnectChannelChat: each].
			(each isKindOf: IRCDirectMessagesObserver)
				ifTrue: [self reconnectPrivateChat: each]]