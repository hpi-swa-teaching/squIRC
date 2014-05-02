as yet unclassified
channelUsersFormatted
	"The list already comes back to us with proper ordering of operators,  
	voiced and members. We need to indicate status for some of these  
	members in the list."
	| newList |
	newList := self channelUsers
				collect: [:each | StringMorph contents: each].
	channel operatorIndexes
		do: [:index | index > 0
				ifTrue: [(newList at: index)
						color: IRCClientColors nickIsOperator]].
	channel voicedIndexes
		do: [:index | index > 0
				ifTrue: [(newList at: index)
						color: IRCClientColors nickIsVoiced]].
	^ newList