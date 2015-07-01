as yet unclassified
deepFindSubmorph: aName
	"care! low performance"
	| queue currentMorph |

	queue := OrderedCollection new.
	queue add: mainWin.
	
	[queue isEmpty] 
		whileFalse: [currentMorph := queue removeFirst.
					currentMorph submorphsDo: [:morph| (morph knownName = aName)
																				ifTrue: [^morph]
																				ifFalse: [queue addLast: morph]]].
	^nil