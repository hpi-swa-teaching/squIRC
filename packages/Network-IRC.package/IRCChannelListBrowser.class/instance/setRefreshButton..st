interface
setRefreshButton: row 
	| btns |
	btns := row submorphs
				select: [:m | m isKindOf: self actionButtonClass].
	refreshButton := btns
				detect: [:btn | btn actionSelector = #requestChannelList]
				ifNone: []