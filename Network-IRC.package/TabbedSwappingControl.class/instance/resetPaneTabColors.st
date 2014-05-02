pane operations
resetPaneTabColors
	| swapper |
	swapper := self findPaneNamed: 'swap'.
	swapper isNil
		ifTrue: [^ nil].
	(swapper submorphs
		select: [:m | m isKindOf: PluggableButtonIRCeMorph])
		do: [:btn | btn offColor: Color white]