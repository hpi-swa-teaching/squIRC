utility
deepFindSubmorph: aName in: aMorph
| queue currentMorph |

	queue := OrderedCollection new.
	queue add: aMorph.
	
	[queue isEmpty] 
		whileFalse: [currentMorph := queue removeFirst.
						 currentMorph submorphsDo: [:morph| (morph knownName = aName)
																				ifTrue: [^morph]
																				ifFalse: [queue addLast: morph]]].
	^nil