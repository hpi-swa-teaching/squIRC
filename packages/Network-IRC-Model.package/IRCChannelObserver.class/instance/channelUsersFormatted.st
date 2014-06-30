as yet unclassified
channelUsersFormatted
	"The list already comes back to us with proper ordering of operators,  
	voiced and members. We need to indicate status for some of these  
	members in the list."
	| newList |
	newList := self channelUsers
				collect: [:each | | stringMorph |
					stringMorph := StringMorph contents: each.
					stringMorph color: (IRCClientColors userNameColorFromHash: each contents).
					stringMorph].
	
	channel operatorIndexes
		do: [:index | index > 0
				ifTrue: [(newList at: index)
						contents: '@ ' , (newList at: index) contents]].
	channel voicedIndexes
		do: [:index | index > 0
				ifTrue: [(newList at: index)
						contents: '+ ' , (newList at: index) contents]].
	
	^ newList