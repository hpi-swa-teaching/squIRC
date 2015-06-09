utility
mainWin: aMainWin hasPane: aName
| window tabs|

	window := self currentWorld submorphNamed: 'squIRC' ifNone: [nil].
	tabs := Set new.
	window ifNotNil: [tabs := window swapper tabs].
	
	self should: [tabs contains: [ :aTab | aName = aTab ] ].
	^window